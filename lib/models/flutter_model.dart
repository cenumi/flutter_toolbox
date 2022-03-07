import 'package:flutter_toolbox/core/meta.dart';

part 'flutter_model.freezed.dart';

// @freezed
// class FlutterDoctorInfo with _$FlutterDoctorInfo {
//   const factory FlutterDoctorInfo({
//     required String channel,
//     required String version,
//     required String path,
//     required String repo,
//     required String frameworkRevision,
//     required String engineRevision,
//     required String dartVersion,
//     required String devToolsVersion,
//     required String pubDownloadMirror,
//     required String flutterDownloadMirror,
//   }) = _FlutterDoctorInfo;
//
//   const FlutterDoctorInfo._();
//
//   factory FlutterDoctorInfo.fromConsole(String value) {
//     final lines = value.split('\n');
//
//     for (final line in lines) {
//       print(line);
//     }
//
//     return FlutterDoctorInfo(
//       channel: 'channel',
//       version: 'version',
//       path: 'path',
//       repo: 'repo',
//       frameworkRevision: 'frameworkRevision',
//       engineRevision: 'engineRevision',
//       dartVersion: 'dartVersion',
//       devToolsVersion: 'devToolsVersion',
//       pubDownloadMirror: 'pubDownloadMirror',
//       flutterDownloadMirror: 'flutterDownloadMirror',
//     );
//   }
// }

enum SupportedPlatform {
  macOS,
  windows,
  web,
  linux,
}

@freezed
class FlutterSettingsInfo with _$FlutterSettingsInfo {
  const factory FlutterSettingsInfo({
    required bool analyticsEnabled,
    required Map<SupportedPlatform, bool> platforms,
  }) = _FlutterSettingsInfo;

  const FlutterSettingsInfo._();

  factory FlutterSettingsInfo.fromConsole(String value) {
    final settingsIndex = value.indexOf('Settings:');

    final lines = value.substring(settingsIndex).split('\n');

    final platforms = <SupportedPlatform, bool>{};
    bool analyticsEnabled = false;

    for (final line in lines) {
      final realLine = line.trim();
      if (realLine.startsWith('enable-macos-desktop')) {
        platforms[SupportedPlatform.macOS] = realLine.contains('true');
      } else if (realLine.startsWith('enable-windows-desktop')) {
        platforms[SupportedPlatform.windows] = realLine.contains('true');
      } else if (realLine.startsWith('enable-web')) {
        platforms[SupportedPlatform.web] = realLine.contains('true');
      } else if (realLine.startsWith('enable-linux-desktop')) {
        platforms[SupportedPlatform.linux] = realLine.contains('true');
      } else if (realLine.startsWith('Analytics')) {
        analyticsEnabled = realLine.contains('enabled');
      }
    }

    return FlutterSettingsInfo(analyticsEnabled: analyticsEnabled, platforms: platforms);
  }
}

@freezed
class FlutterVersionInfo with _$FlutterVersionInfo {
  const factory FlutterVersionInfo({
    required String flutterVersion,
    required String branch,
    required String repo,
    required String framework,
    required String frameworkTime,
    required String engine,
    required String dartVersion,
    required String devToolsVersion,
  }) = _FlutterVersionInfo;

  const FlutterVersionInfo._();

  factory FlutterVersionInfo.fromConsole(String value) {
    final lines = value.split('\n');

    const pattern = ' • ';

    final flutterLine = lines[0].split(pattern);
    final frameworkLine = lines[1].split(pattern);
    final engineLine = lines[2].split(pattern);
    final toolsLine = lines[3].split(pattern);

    return FlutterVersionInfo(
      flutterVersion: flutterLine.first.substring(8),
      branch: flutterLine[1].substring(8),
      repo: flutterLine[2],
      framework: frameworkLine[1],
      frameworkTime: frameworkLine[2],
      engine: engineLine[1],
      dartVersion: toolsLine[1].substring(5),
      devToolsVersion: toolsLine[2].substring(9),
    );
  }
}
