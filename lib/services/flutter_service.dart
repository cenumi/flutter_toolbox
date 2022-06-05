import 'package:flutter_toolbox/core/packages.dart';
import 'package:flutter_toolbox/models/flutter_model.dart';
import 'package:process/process.dart';

final flutterServiceProvider = Provider((_) => FlutterService());

class FlutterService {
  final _pm = const LocalProcessManager();

  Future<FlutterVersionInfo> getFlutterInfo(String flutter) async {
    final res = await _pm.run([flutter, '--version']);

    return FlutterVersionInfo.fromConsole(res.stdout as String);
  }

  Future<FlutterSettingsInfo> getFlutterSettings(String flutter) async {
    final res = await _pm.run([flutter, 'config']);

    return FlutterSettingsInfo.fromConsole(res.stdout as String);
  }

  Future<void> changePlatformSettings(String flutter, SupportedPlatform platform, {required bool enabled}) async {
    await _pm.run([flutter, 'config', '--${enabled ? '' : 'no-'}enable-${platform.settingsName}']);
  }
}
