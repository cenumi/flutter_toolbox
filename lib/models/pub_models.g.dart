// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pub_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PubVersions _$$_PubVersionsFromJson(Map<String, dynamic> json) =>
    _$_PubVersions(
      name: json['name'] as String,
      versions:
          (json['versions'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_PubVersionsToJson(_$_PubVersions instance) =>
    <String, dynamic>{
      'name': instance.name,
      'versions': instance.versions,
    };
