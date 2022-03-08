// ignore_for_file: invalid_annotation_target

import 'package:flutter_toolbox/core/meta.dart';
import 'package:flutter_toolbox/core/packages.dart';
import 'package:isar/isar.dart';

part 'project_models.freezed.dart';

part 'project_models.g.dart';

@Collection()
@freezed
class Project with _$Project {
  const factory Project({
    int? id,
    String? name,
    required String path,
  }) = _Project;

  const Project._();
}

@Collection()
@freezed
class DependencyVersion with _$DependencyVersion {
  const factory DependencyVersion({
    int? id,
    @Index(unique: true) required String name,
    required String stableVersion,
    required String preReleaseVersion,
    required bool preReleasing,
    required DateTime updateTime,
  }) = _DependencyVersion;

  const DependencyVersion._();

  Version get stable => Version.parse(stableVersion);

  Version get preRelease => Version.parse(preReleaseVersion);
}
