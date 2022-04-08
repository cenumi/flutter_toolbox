import 'package:flutter/material.dart';
import 'package:flutter_toolbox/core/globals.dart';
import 'package:flutter_toolbox/core/meta.dart';
import 'package:flutter_toolbox/core/packages.dart';
import 'package:flutter_toolbox/models/flutter_model.dart';
import 'package:flutter_toolbox/services/app_service.dart';
import 'package:process/process.dart';

part 'flutter_service.freezed.dart';

final flutterServiceProvider = StateNotifierProvider<FlutterService, FlutterServiceData>(
  (ref) {
    final flutterPath = ref.watch(appServiceProvider.select((value) => value.flutterPath));
    return FlutterService(flutterPath);
  },
);

@freezed
class FlutterServiceData with _$FlutterServiceData {
  const factory FlutterServiceData({
    FlutterVersionInfo? flutterVersionInfo,
    FlutterSettingsInfo? flutterSettingsInfo,
  }) = _FlutterServiceData;

  const FlutterServiceData._();
}

class FlutterService extends StateNotifier<FlutterServiceData> {
  FlutterService(this.flutter) : super(const FlutterServiceData()) {
    fetchFlutterInfo();
    fetchFlutterPlatformConfig();
  }

  final String? flutter;

  final _pm = const LocalProcessManager();

  Future<void> fetchFlutterInfo() async {
    if (flutter == null) return;

    final res = await _pm.run([flutter!, '--version']);
    if (res.exitCode == 0) {
      state = state.copyWith.call(flutterVersionInfo: FlutterVersionInfo.fromConsole(res.stdout as String));
    } else {
      Globals.scaffoldMessenger.showSnackBar(SnackBar(content: Text('Error: ${res.stderr}')));
    }
  }

  Future<void> fetchFlutterPlatformConfig() async {
    if (flutter == null) return;

    final res = await _pm.run([flutter!, 'config']);
    if (res.exitCode == 0) {
      state = state.copyWith.call(flutterSettingsInfo: FlutterSettingsInfo.fromConsole(res.stdout as String));
    } else {
      Globals.scaffoldMessenger.showSnackBar(SnackBar(content: Text('Error: ${res.stderr}')));
    }
  }

  Future<void> changePlatformSettings(SupportedPlatform platform, {required bool enabled}) async {
    if (flutter == null) return;

    final String platformName;

    switch (platform) {
      case SupportedPlatform.macOS:
        platformName = 'macos-desktop';
        break;
      case SupportedPlatform.windows:
        platformName = 'windows-desktop';
        break;
      case SupportedPlatform.web:
        platformName = 'web';
        break;
      case SupportedPlatform.linux:
        platformName = 'linux-desktop';
        break;
    }

    final res = await _pm.run([flutter!, 'config', '--${enabled ? '' : 'no-'}enable-$platformName']);

    if (res.exitCode == 0) {
      state = state.copyWith.flutterSettingsInfo!
          .call(platforms: {...state.flutterSettingsInfo!.platforms, platform: enabled});
    } else {
      Globals.scaffoldMessenger.showSnackBar(SnackBar(content: Text('Error: ${res.stderr}')));
    }
  }
}
