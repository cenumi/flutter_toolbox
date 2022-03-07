import 'dart:io';

import 'package:file_selector/file_selector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_toolbox/core/meta.dart';
import 'package:flutter_toolbox/core/packages.dart';
import 'package:flutter_toolbox/core/services.dart';
import 'package:flutter_toolbox/models/flutter_model.dart';
import 'package:flutter_toolbox/services/global_service.dart';
import 'package:flutter_toolbox/services/local_storage_service.dart';
import 'package:process/process.dart';

part 'flutter_service.freezed.dart';

@freezed
class FlutterServiceValues with _$FlutterServiceValues {
  const factory FlutterServiceValues({
    String? flutterPath,
    FlutterVersionInfo? flutterVersionInfo,
    FlutterSettingsInfo? flutterSettingsInfo,
  }) = _FlutterServiceValues;

  const FlutterServiceValues._();
}

class FlutterService extends StateNotifier<FlutterServiceValues> {
  FlutterService(Reader read)
      : _globalService = read(globalServiceProvider),
        _localStorageService = read(localStorageServiceProvider),
        super(const FlutterServiceValues()) {
    _localStorageService.getString('flutterPath').then((value) {
      state = state.copyWith.call(flutterPath: value);
      fetchFlutterInfo();
      fetchFlutterPlatformConfig();
    });
  }

  final GlobalService _globalService;
  final LocalStorageService _localStorageService;

  final _pm = const LocalProcessManager();

  Future<void> setFlutterPath() async {
    final path = await getDirectoryPath();
    if (path == null) return;

    final effectivePath = '$path${Platform.pathSeparator}bin${Platform.pathSeparator}flutter';

    if (!_pm.canRun(effectivePath)) {
      showDialog(
        context: _globalService.navigator.context,
        builder: (context) => AlertDialog(
          content: const Text('Wrong Flutter Path'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                setFlutterPath();
              },
              child: const Text('RESELECT'),
            ),
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('CANCEL'),
            ),
          ],
        ),
      );
      return;
    }
    state = state.copyWith.call(flutterPath: effectivePath);

    _localStorageService.saveString('flutterPath', effectivePath);
    fetchFlutterInfo();
    fetchFlutterPlatformConfig();
  }

  Future<void> fetchFlutterInfo() async {
    if (state.flutterPath == null) return;

    final res = await _pm.run([state.flutterPath!, '--version']);
    if (res.exitCode == 0) {
      state = state.copyWith.call(flutterVersionInfo: FlutterVersionInfo.fromConsole(res.stdout as String));
    } else {
      _globalService.scaffoldMessenger.showSnackBar(SnackBar(content: Text('Error: ${res.stderr}')));
    }
  }

  Future<void> fetchFlutterPlatformConfig() async {
    if (state.flutterPath == null) return;

    final res = await _pm.run([state.flutterPath!, 'config']);
    if (res.exitCode == 0) {
      state = state.copyWith.call(flutterSettingsInfo: FlutterSettingsInfo.fromConsole(res.stdout as String));
    } else {
      _globalService.scaffoldMessenger.showSnackBar(SnackBar(content: Text('Error: ${res.stderr}')));
    }
  }

  Future<void> changePlatformSettings(SupportedPlatform platform, {required bool enabled}) async {
    if (state.flutterPath == null) return;

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

    final res = await _pm.run([state.flutterPath!, 'config', '--${enabled ? '' : 'no-'}enable-$platformName']);

    if (res.exitCode == 0) {
      state = state.copyWith.flutterSettingsInfo!
          .call(platforms: {...state.flutterSettingsInfo!.platforms, platform: enabled});
    } else {
      _globalService.scaffoldMessenger.showSnackBar(SnackBar(content: Text('Error: ${res.stderr}')));
    }
  }
}
