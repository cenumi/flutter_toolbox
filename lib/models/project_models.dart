// ignore_for_file: invalid_annotation_target

import 'package:flutter_toolbox/core/meta.dart';
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

// @Collection()
// @freezed
// class Dependency with _$Dependency {
//   const factory Dependency({
//     int? id,
//     required String version,
//     @Index(composite: [CompositeIndex('version')]) required String name,
//   }) = _Dependency;
//
//   const Dependency._();
// }
