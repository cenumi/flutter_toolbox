import 'package:flutter_toolbox/core/meta.dart';
import 'package:pub_semver/pub_semver.dart';

part 'pub_models.freezed.dart';

part 'pub_models.g.dart';

@freezed
class PubVersions with _$PubVersions {
  const factory PubVersions({
    required String name,
    required List<String> versions,
  }) = _PubVersions;

  const PubVersions._();

  factory PubVersions.fromJson(Map<String, dynamic> json) => _$PubVersionsFromJson(json);

  String? get latestVersion {
    for (final version in versions) {
      if (!Version.parse(version).isPreRelease) {
        return version;
      }
    }
    return null;
  }

  String? get latestPreReleaseVersion {
    for (final version in versions) {
      if (Version.parse(version).isPreRelease) {
        return version;
      }
    }
    return null;
  }
}
