// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_models.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast

extension GetProjectCollection on Isar {
  IsarCollection<Project> get projects {
    return getCollection('Project');
  }
}

final ProjectSchema = CollectionSchema(
  name: 'Project',
  schema:
      '{"name":"Project","idName":"id","properties":[{"name":"name","type":"String"},{"name":"path","type":"String"}],"indexes":[],"links":[]}',
  nativeAdapter: const _ProjectNativeAdapter(),
  webAdapter: const _ProjectWebAdapter(),
  idName: 'id',
  propertyIds: {'name': 0, 'path': 1},
  listProperties: {},
  indexIds: {},
  indexTypes: {},
  linkIds: {},
  backlinkIds: {},
  linkedCollections: [],
  getId: (obj) {
    if (obj.id == Isar.autoIncrement) {
      return null;
    } else {
      return obj.id;
    }
  },
  setId: null,
  getLinks: (obj) => [],
  version: 2,
);

class _ProjectWebAdapter extends IsarWebTypeAdapter<Project> {
  const _ProjectWebAdapter();

  @override
  Object serialize(IsarCollection<Project> collection, Project object) {
    final jsObj = IsarNative.newJsObject();
    IsarNative.jsObjectSet(jsObj, 'id', object.id);
    IsarNative.jsObjectSet(jsObj, 'name', object.name);
    IsarNative.jsObjectSet(jsObj, 'path', object.path);
    return jsObj;
  }

  @override
  Project deserialize(IsarCollection<Project> collection, dynamic jsObj) {
    final object = Project(
      id: IsarNative.jsObjectGet(jsObj, 'id'),
      name: IsarNative.jsObjectGet(jsObj, 'name'),
      path: IsarNative.jsObjectGet(jsObj, 'path') ?? '',
    );
    return object;
  }

  @override
  P deserializeProperty<P>(Object jsObj, String propertyName) {
    switch (propertyName) {
      case 'id':
        return (IsarNative.jsObjectGet(jsObj, 'id')) as P;
      case 'name':
        return (IsarNative.jsObjectGet(jsObj, 'name')) as P;
      case 'path':
        return (IsarNative.jsObjectGet(jsObj, 'path') ?? '') as P;
      default:
        throw 'Illegal propertyName';
    }
  }

  @override
  void attachLinks(Isar isar, int id, Project object) {}
}

class _ProjectNativeAdapter extends IsarNativeTypeAdapter<Project> {
  const _ProjectNativeAdapter();

  @override
  void serialize(IsarCollection<Project> collection, IsarRawObject rawObj,
      Project object, int staticSize, List<int> offsets, AdapterAlloc alloc) {
    var dynamicSize = 0;
    final value0 = object.name;
    IsarUint8List? _name;
    if (value0 != null) {
      _name = IsarBinaryWriter.utf8Encoder.convert(value0);
    }
    dynamicSize += (_name?.length ?? 0) as int;
    final value1 = object.path;
    final _path = IsarBinaryWriter.utf8Encoder.convert(value1);
    dynamicSize += (_path.length) as int;
    final size = staticSize + dynamicSize;

    rawObj.buffer = alloc(size);
    rawObj.buffer_length = size;
    final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
    final writer = IsarBinaryWriter(buffer, staticSize);
    writer.writeBytes(offsets[0], _name);
    writer.writeBytes(offsets[1], _path);
  }

  @override
  Project deserialize(IsarCollection<Project> collection, int id,
      IsarBinaryReader reader, List<int> offsets) {
    final object = Project(
      id: id,
      name: reader.readStringOrNull(offsets[0]),
      path: reader.readString(offsets[1]),
    );
    return object;
  }

  @override
  P deserializeProperty<P>(
      int id, IsarBinaryReader reader, int propertyIndex, int offset) {
    switch (propertyIndex) {
      case -1:
        return id as P;
      case 0:
        return (reader.readStringOrNull(offset)) as P;
      case 1:
        return (reader.readString(offset)) as P;
      default:
        throw 'Illegal propertyIndex';
    }
  }

  @override
  void attachLinks(Isar isar, int id, Project object) {}
}

extension ProjectQueryWhereSort on QueryBuilder<Project, Project, QWhere> {
  QueryBuilder<Project, Project, QAfterWhere> anyId() {
    return addWhereClauseInternal(const WhereClause(indexName: null));
  }
}

extension ProjectQueryWhere on QueryBuilder<Project, Project, QWhereClause> {
  QueryBuilder<Project, Project, QAfterWhereClause> idEqualTo(int? id) {
    return addWhereClauseInternal(WhereClause(
      indexName: null,
      lower: [id],
      includeLower: true,
      upper: [id],
      includeUpper: true,
    ));
  }

  QueryBuilder<Project, Project, QAfterWhereClause> idNotEqualTo(int? id) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(WhereClause(
        indexName: null,
        upper: [id],
        includeUpper: false,
      )).addWhereClauseInternal(WhereClause(
        indexName: null,
        lower: [id],
        includeLower: false,
      ));
    } else {
      return addWhereClauseInternal(WhereClause(
        indexName: null,
        lower: [id],
        includeLower: false,
      )).addWhereClauseInternal(WhereClause(
        indexName: null,
        upper: [id],
        includeUpper: false,
      ));
    }
  }

  QueryBuilder<Project, Project, QAfterWhereClause> idGreaterThan(
    int? id, {
    bool include = false,
  }) {
    return addWhereClauseInternal(WhereClause(
      indexName: null,
      lower: [id],
      includeLower: include,
    ));
  }

  QueryBuilder<Project, Project, QAfterWhereClause> idLessThan(
    int? id, {
    bool include = false,
  }) {
    return addWhereClauseInternal(WhereClause(
      indexName: null,
      upper: [id],
      includeUpper: include,
    ));
  }

  QueryBuilder<Project, Project, QAfterWhereClause> idBetween(
    int? lowerId,
    int? upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addWhereClauseInternal(WhereClause(
      indexName: null,
      lower: [lowerId],
      includeLower: includeLower,
      upper: [upperId],
      includeUpper: includeUpper,
    ));
  }
}

extension ProjectQueryFilter
    on QueryBuilder<Project, Project, QFilterCondition> {
  QueryBuilder<Project, Project, QAfterFilterCondition> idIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'id',
      value: null,
    ));
  }

  QueryBuilder<Project, Project, QAfterFilterCondition> idEqualTo(int? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<Project, Project, QAfterFilterCondition> idGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<Project, Project, QAfterFilterCondition> idLessThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<Project, Project, QAfterFilterCondition> idBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'id',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<Project, Project, QAfterFilterCondition> nameIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'name',
      value: null,
    ));
  }

  QueryBuilder<Project, Project, QAfterFilterCondition> nameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Project, Project, QAfterFilterCondition> nameGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Project, Project, QAfterFilterCondition> nameLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Project, Project, QAfterFilterCondition> nameBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'name',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Project, Project, QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Project, Project, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Project, Project, QAfterFilterCondition> nameContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Project, Project, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'name',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Project, Project, QAfterFilterCondition> pathEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'path',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Project, Project, QAfterFilterCondition> pathGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'path',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Project, Project, QAfterFilterCondition> pathLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'path',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Project, Project, QAfterFilterCondition> pathBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'path',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Project, Project, QAfterFilterCondition> pathStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'path',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Project, Project, QAfterFilterCondition> pathEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'path',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Project, Project, QAfterFilterCondition> pathContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'path',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Project, Project, QAfterFilterCondition> pathMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'path',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }
}

extension ProjectQueryLinks
    on QueryBuilder<Project, Project, QFilterCondition> {}

extension ProjectQueryWhereSortBy on QueryBuilder<Project, Project, QSortBy> {
  QueryBuilder<Project, Project, QAfterSortBy> sortById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<Project, Project, QAfterSortBy> sortByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<Project, Project, QAfterSortBy> sortByName() {
    return addSortByInternal('name', Sort.asc);
  }

  QueryBuilder<Project, Project, QAfterSortBy> sortByNameDesc() {
    return addSortByInternal('name', Sort.desc);
  }

  QueryBuilder<Project, Project, QAfterSortBy> sortByPath() {
    return addSortByInternal('path', Sort.asc);
  }

  QueryBuilder<Project, Project, QAfterSortBy> sortByPathDesc() {
    return addSortByInternal('path', Sort.desc);
  }
}

extension ProjectQueryWhereSortThenBy
    on QueryBuilder<Project, Project, QSortThenBy> {
  QueryBuilder<Project, Project, QAfterSortBy> thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<Project, Project, QAfterSortBy> thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<Project, Project, QAfterSortBy> thenByName() {
    return addSortByInternal('name', Sort.asc);
  }

  QueryBuilder<Project, Project, QAfterSortBy> thenByNameDesc() {
    return addSortByInternal('name', Sort.desc);
  }

  QueryBuilder<Project, Project, QAfterSortBy> thenByPath() {
    return addSortByInternal('path', Sort.asc);
  }

  QueryBuilder<Project, Project, QAfterSortBy> thenByPathDesc() {
    return addSortByInternal('path', Sort.desc);
  }
}

extension ProjectQueryWhereDistinct
    on QueryBuilder<Project, Project, QDistinct> {
  QueryBuilder<Project, Project, QDistinct> distinctById() {
    return addDistinctByInternal('id');
  }

  QueryBuilder<Project, Project, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('name', caseSensitive: caseSensitive);
  }

  QueryBuilder<Project, Project, QDistinct> distinctByPath(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('path', caseSensitive: caseSensitive);
  }
}

extension ProjectQueryProperty
    on QueryBuilder<Project, Project, QQueryProperty> {
  QueryBuilder<Project, int?, QQueryOperations> idProperty() {
    return addPropertyNameInternal('id');
  }

  QueryBuilder<Project, String?, QQueryOperations> nameProperty() {
    return addPropertyNameInternal('name');
  }

  QueryBuilder<Project, String, QQueryOperations> pathProperty() {
    return addPropertyNameInternal('path');
  }
}

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast

extension GetDependencyVersionCollection on Isar {
  IsarCollection<DependencyVersion> get dependencyVersions {
    return getCollection('DependencyVersion');
  }
}

final DependencyVersionSchema = CollectionSchema(
  name: 'DependencyVersion',
  schema:
      '{"name":"DependencyVersion","idName":"id","properties":[{"name":"name","type":"String"},{"name":"preReleaseVersion","type":"String"},{"name":"preReleasing","type":"Bool"},{"name":"stableVersion","type":"String"},{"name":"updateTime","type":"Long"}],"indexes":[{"name":"name","unique":true,"properties":[{"name":"name","type":"Hash","caseSensitive":true}]}],"links":[]}',
  nativeAdapter: const _DependencyVersionNativeAdapter(),
  webAdapter: const _DependencyVersionWebAdapter(),
  idName: 'id',
  propertyIds: {
    'name': 0,
    'preReleaseVersion': 1,
    'preReleasing': 2,
    'stableVersion': 3,
    'updateTime': 4
  },
  listProperties: {},
  indexIds: {'name': 0},
  indexTypes: {
    'name': [
      NativeIndexType.stringHash,
    ]
  },
  linkIds: {},
  backlinkIds: {},
  linkedCollections: [],
  getId: (obj) {
    if (obj.id == Isar.autoIncrement) {
      return null;
    } else {
      return obj.id;
    }
  },
  setId: null,
  getLinks: (obj) => [],
  version: 2,
);

class _DependencyVersionWebAdapter
    extends IsarWebTypeAdapter<DependencyVersion> {
  const _DependencyVersionWebAdapter();

  @override
  Object serialize(
      IsarCollection<DependencyVersion> collection, DependencyVersion object) {
    final jsObj = IsarNative.newJsObject();
    IsarNative.jsObjectSet(jsObj, 'id', object.id);
    IsarNative.jsObjectSet(jsObj, 'name', object.name);
    IsarNative.jsObjectSet(
        jsObj, 'preReleaseVersion', object.preReleaseVersion);
    IsarNative.jsObjectSet(jsObj, 'preReleasing', object.preReleasing);
    IsarNative.jsObjectSet(jsObj, 'stableVersion', object.stableVersion);
    IsarNative.jsObjectSet(
        jsObj, 'updateTime', object.updateTime.toUtc().millisecondsSinceEpoch);
    return jsObj;
  }

  @override
  DependencyVersion deserialize(
      IsarCollection<DependencyVersion> collection, dynamic jsObj) {
    final object = DependencyVersion(
      id: IsarNative.jsObjectGet(jsObj, 'id'),
      name: IsarNative.jsObjectGet(jsObj, 'name') ?? '',
      preReleaseVersion:
          IsarNative.jsObjectGet(jsObj, 'preReleaseVersion') ?? '',
      preReleasing: IsarNative.jsObjectGet(jsObj, 'preReleasing') ?? false,
      stableVersion: IsarNative.jsObjectGet(jsObj, 'stableVersion') ?? '',
      updateTime: IsarNative.jsObjectGet(jsObj, 'updateTime') != null
          ? DateTime.fromMillisecondsSinceEpoch(
                  IsarNative.jsObjectGet(jsObj, 'updateTime'),
                  isUtc: true)
              .toLocal()
          : DateTime.fromMillisecondsSinceEpoch(0),
    );
    return object;
  }

  @override
  P deserializeProperty<P>(Object jsObj, String propertyName) {
    switch (propertyName) {
      case 'id':
        return (IsarNative.jsObjectGet(jsObj, 'id')) as P;
      case 'name':
        return (IsarNative.jsObjectGet(jsObj, 'name') ?? '') as P;
      case 'preReleaseVersion':
        return (IsarNative.jsObjectGet(jsObj, 'preReleaseVersion') ?? '') as P;
      case 'preReleasing':
        return (IsarNative.jsObjectGet(jsObj, 'preReleasing') ?? false) as P;
      case 'stableVersion':
        return (IsarNative.jsObjectGet(jsObj, 'stableVersion') ?? '') as P;
      case 'updateTime':
        return (IsarNative.jsObjectGet(jsObj, 'updateTime') != null
            ? DateTime.fromMillisecondsSinceEpoch(
                    IsarNative.jsObjectGet(jsObj, 'updateTime'),
                    isUtc: true)
                .toLocal()
            : DateTime.fromMillisecondsSinceEpoch(0)) as P;
      default:
        throw 'Illegal propertyName';
    }
  }

  @override
  void attachLinks(Isar isar, int id, DependencyVersion object) {}
}

class _DependencyVersionNativeAdapter
    extends IsarNativeTypeAdapter<DependencyVersion> {
  const _DependencyVersionNativeAdapter();

  @override
  void serialize(
      IsarCollection<DependencyVersion> collection,
      IsarRawObject rawObj,
      DependencyVersion object,
      int staticSize,
      List<int> offsets,
      AdapterAlloc alloc) {
    var dynamicSize = 0;
    final value0 = object.name;
    final _name = IsarBinaryWriter.utf8Encoder.convert(value0);
    dynamicSize += (_name.length) as int;
    final value1 = object.preReleaseVersion;
    final _preReleaseVersion = IsarBinaryWriter.utf8Encoder.convert(value1);
    dynamicSize += (_preReleaseVersion.length) as int;
    final value2 = object.preReleasing;
    final _preReleasing = value2;
    final value3 = object.stableVersion;
    final _stableVersion = IsarBinaryWriter.utf8Encoder.convert(value3);
    dynamicSize += (_stableVersion.length) as int;
    final value4 = object.updateTime;
    final _updateTime = value4;
    final size = staticSize + dynamicSize;

    rawObj.buffer = alloc(size);
    rawObj.buffer_length = size;
    final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
    final writer = IsarBinaryWriter(buffer, staticSize);
    writer.writeBytes(offsets[0], _name);
    writer.writeBytes(offsets[1], _preReleaseVersion);
    writer.writeBool(offsets[2], _preReleasing);
    writer.writeBytes(offsets[3], _stableVersion);
    writer.writeDateTime(offsets[4], _updateTime);
  }

  @override
  DependencyVersion deserialize(IsarCollection<DependencyVersion> collection,
      int id, IsarBinaryReader reader, List<int> offsets) {
    final object = DependencyVersion(
      id: id,
      name: reader.readString(offsets[0]),
      preReleaseVersion: reader.readString(offsets[1]),
      preReleasing: reader.readBool(offsets[2]),
      stableVersion: reader.readString(offsets[3]),
      updateTime: reader.readDateTime(offsets[4]),
    );
    return object;
  }

  @override
  P deserializeProperty<P>(
      int id, IsarBinaryReader reader, int propertyIndex, int offset) {
    switch (propertyIndex) {
      case -1:
        return id as P;
      case 0:
        return (reader.readString(offset)) as P;
      case 1:
        return (reader.readString(offset)) as P;
      case 2:
        return (reader.readBool(offset)) as P;
      case 3:
        return (reader.readString(offset)) as P;
      case 4:
        return (reader.readDateTime(offset)) as P;
      default:
        throw 'Illegal propertyIndex';
    }
  }

  @override
  void attachLinks(Isar isar, int id, DependencyVersion object) {}
}

extension DependencyVersionByIndex on IsarCollection<DependencyVersion> {
  Future<DependencyVersion?> getByName(String name) {
    return getByIndex('name', [name]);
  }

  DependencyVersion? getByNameSync(String name) {
    return getByIndexSync('name', [name]);
  }

  Future<bool> deleteByName(String name) {
    return deleteByIndex('name', [name]);
  }

  bool deleteByNameSync(String name) {
    return deleteByIndexSync('name', [name]);
  }

  Future<List<DependencyVersion?>> getAllByName(List<String> nameValues) {
    final values = nameValues.map((e) => [e]).toList();
    return getAllByIndex('name', values);
  }

  List<DependencyVersion?> getAllByNameSync(List<String> nameValues) {
    final values = nameValues.map((e) => [e]).toList();
    return getAllByIndexSync('name', values);
  }

  Future<int> deleteAllByName(List<String> nameValues) {
    final values = nameValues.map((e) => [e]).toList();
    return deleteAllByIndex('name', values);
  }

  int deleteAllByNameSync(List<String> nameValues) {
    final values = nameValues.map((e) => [e]).toList();
    return deleteAllByIndexSync('name', values);
  }
}

extension DependencyVersionQueryWhereSort
    on QueryBuilder<DependencyVersion, DependencyVersion, QWhere> {
  QueryBuilder<DependencyVersion, DependencyVersion, QAfterWhere> anyId() {
    return addWhereClauseInternal(const WhereClause(indexName: null));
  }

  QueryBuilder<DependencyVersion, DependencyVersion, QAfterWhere> anyName() {
    return addWhereClauseInternal(const WhereClause(indexName: 'name'));
  }
}

extension DependencyVersionQueryWhere
    on QueryBuilder<DependencyVersion, DependencyVersion, QWhereClause> {
  QueryBuilder<DependencyVersion, DependencyVersion, QAfterWhereClause>
      idEqualTo(int? id) {
    return addWhereClauseInternal(WhereClause(
      indexName: null,
      lower: [id],
      includeLower: true,
      upper: [id],
      includeUpper: true,
    ));
  }

  QueryBuilder<DependencyVersion, DependencyVersion, QAfterWhereClause>
      idNotEqualTo(int? id) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(WhereClause(
        indexName: null,
        upper: [id],
        includeUpper: false,
      )).addWhereClauseInternal(WhereClause(
        indexName: null,
        lower: [id],
        includeLower: false,
      ));
    } else {
      return addWhereClauseInternal(WhereClause(
        indexName: null,
        lower: [id],
        includeLower: false,
      )).addWhereClauseInternal(WhereClause(
        indexName: null,
        upper: [id],
        includeUpper: false,
      ));
    }
  }

  QueryBuilder<DependencyVersion, DependencyVersion, QAfterWhereClause>
      idGreaterThan(
    int? id, {
    bool include = false,
  }) {
    return addWhereClauseInternal(WhereClause(
      indexName: null,
      lower: [id],
      includeLower: include,
    ));
  }

  QueryBuilder<DependencyVersion, DependencyVersion, QAfterWhereClause>
      idLessThan(
    int? id, {
    bool include = false,
  }) {
    return addWhereClauseInternal(WhereClause(
      indexName: null,
      upper: [id],
      includeUpper: include,
    ));
  }

  QueryBuilder<DependencyVersion, DependencyVersion, QAfterWhereClause>
      idBetween(
    int? lowerId,
    int? upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addWhereClauseInternal(WhereClause(
      indexName: null,
      lower: [lowerId],
      includeLower: includeLower,
      upper: [upperId],
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<DependencyVersion, DependencyVersion, QAfterWhereClause>
      nameEqualTo(String name) {
    return addWhereClauseInternal(WhereClause(
      indexName: 'name',
      lower: [name],
      includeLower: true,
      upper: [name],
      includeUpper: true,
    ));
  }

  QueryBuilder<DependencyVersion, DependencyVersion, QAfterWhereClause>
      nameNotEqualTo(String name) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(WhereClause(
        indexName: 'name',
        upper: [name],
        includeUpper: false,
      )).addWhereClauseInternal(WhereClause(
        indexName: 'name',
        lower: [name],
        includeLower: false,
      ));
    } else {
      return addWhereClauseInternal(WhereClause(
        indexName: 'name',
        lower: [name],
        includeLower: false,
      )).addWhereClauseInternal(WhereClause(
        indexName: 'name',
        upper: [name],
        includeUpper: false,
      ));
    }
  }
}

extension DependencyVersionQueryFilter
    on QueryBuilder<DependencyVersion, DependencyVersion, QFilterCondition> {
  QueryBuilder<DependencyVersion, DependencyVersion, QAfterFilterCondition>
      idIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'id',
      value: null,
    ));
  }

  QueryBuilder<DependencyVersion, DependencyVersion, QAfterFilterCondition>
      idEqualTo(int? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<DependencyVersion, DependencyVersion, QAfterFilterCondition>
      idGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<DependencyVersion, DependencyVersion, QAfterFilterCondition>
      idLessThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<DependencyVersion, DependencyVersion, QAfterFilterCondition>
      idBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'id',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<DependencyVersion, DependencyVersion, QAfterFilterCondition>
      nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<DependencyVersion, DependencyVersion, QAfterFilterCondition>
      nameGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<DependencyVersion, DependencyVersion, QAfterFilterCondition>
      nameLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<DependencyVersion, DependencyVersion, QAfterFilterCondition>
      nameBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'name',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<DependencyVersion, DependencyVersion, QAfterFilterCondition>
      nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<DependencyVersion, DependencyVersion, QAfterFilterCondition>
      nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<DependencyVersion, DependencyVersion, QAfterFilterCondition>
      nameContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<DependencyVersion, DependencyVersion, QAfterFilterCondition>
      nameMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'name',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<DependencyVersion, DependencyVersion, QAfterFilterCondition>
      preReleaseVersionEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'preReleaseVersion',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<DependencyVersion, DependencyVersion, QAfterFilterCondition>
      preReleaseVersionGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'preReleaseVersion',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<DependencyVersion, DependencyVersion, QAfterFilterCondition>
      preReleaseVersionLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'preReleaseVersion',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<DependencyVersion, DependencyVersion, QAfterFilterCondition>
      preReleaseVersionBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'preReleaseVersion',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<DependencyVersion, DependencyVersion, QAfterFilterCondition>
      preReleaseVersionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'preReleaseVersion',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<DependencyVersion, DependencyVersion, QAfterFilterCondition>
      preReleaseVersionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'preReleaseVersion',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<DependencyVersion, DependencyVersion, QAfterFilterCondition>
      preReleaseVersionContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'preReleaseVersion',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<DependencyVersion, DependencyVersion, QAfterFilterCondition>
      preReleaseVersionMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'preReleaseVersion',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<DependencyVersion, DependencyVersion, QAfterFilterCondition>
      preReleasingEqualTo(bool value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'preReleasing',
      value: value,
    ));
  }

  QueryBuilder<DependencyVersion, DependencyVersion, QAfterFilterCondition>
      stableVersionEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'stableVersion',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<DependencyVersion, DependencyVersion, QAfterFilterCondition>
      stableVersionGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'stableVersion',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<DependencyVersion, DependencyVersion, QAfterFilterCondition>
      stableVersionLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'stableVersion',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<DependencyVersion, DependencyVersion, QAfterFilterCondition>
      stableVersionBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'stableVersion',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<DependencyVersion, DependencyVersion, QAfterFilterCondition>
      stableVersionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'stableVersion',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<DependencyVersion, DependencyVersion, QAfterFilterCondition>
      stableVersionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'stableVersion',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<DependencyVersion, DependencyVersion, QAfterFilterCondition>
      stableVersionContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'stableVersion',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<DependencyVersion, DependencyVersion, QAfterFilterCondition>
      stableVersionMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'stableVersion',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<DependencyVersion, DependencyVersion, QAfterFilterCondition>
      updateTimeEqualTo(DateTime value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'updateTime',
      value: value,
    ));
  }

  QueryBuilder<DependencyVersion, DependencyVersion, QAfterFilterCondition>
      updateTimeGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'updateTime',
      value: value,
    ));
  }

  QueryBuilder<DependencyVersion, DependencyVersion, QAfterFilterCondition>
      updateTimeLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'updateTime',
      value: value,
    ));
  }

  QueryBuilder<DependencyVersion, DependencyVersion, QAfterFilterCondition>
      updateTimeBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'updateTime',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }
}

extension DependencyVersionQueryLinks
    on QueryBuilder<DependencyVersion, DependencyVersion, QFilterCondition> {}

extension DependencyVersionQueryWhereSortBy
    on QueryBuilder<DependencyVersion, DependencyVersion, QSortBy> {
  QueryBuilder<DependencyVersion, DependencyVersion, QAfterSortBy> sortById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<DependencyVersion, DependencyVersion, QAfterSortBy>
      sortByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<DependencyVersion, DependencyVersion, QAfterSortBy>
      sortByName() {
    return addSortByInternal('name', Sort.asc);
  }

  QueryBuilder<DependencyVersion, DependencyVersion, QAfterSortBy>
      sortByNameDesc() {
    return addSortByInternal('name', Sort.desc);
  }

  QueryBuilder<DependencyVersion, DependencyVersion, QAfterSortBy>
      sortByPreReleaseVersion() {
    return addSortByInternal('preReleaseVersion', Sort.asc);
  }

  QueryBuilder<DependencyVersion, DependencyVersion, QAfterSortBy>
      sortByPreReleaseVersionDesc() {
    return addSortByInternal('preReleaseVersion', Sort.desc);
  }

  QueryBuilder<DependencyVersion, DependencyVersion, QAfterSortBy>
      sortByPreReleasing() {
    return addSortByInternal('preReleasing', Sort.asc);
  }

  QueryBuilder<DependencyVersion, DependencyVersion, QAfterSortBy>
      sortByPreReleasingDesc() {
    return addSortByInternal('preReleasing', Sort.desc);
  }

  QueryBuilder<DependencyVersion, DependencyVersion, QAfterSortBy>
      sortByStableVersion() {
    return addSortByInternal('stableVersion', Sort.asc);
  }

  QueryBuilder<DependencyVersion, DependencyVersion, QAfterSortBy>
      sortByStableVersionDesc() {
    return addSortByInternal('stableVersion', Sort.desc);
  }

  QueryBuilder<DependencyVersion, DependencyVersion, QAfterSortBy>
      sortByUpdateTime() {
    return addSortByInternal('updateTime', Sort.asc);
  }

  QueryBuilder<DependencyVersion, DependencyVersion, QAfterSortBy>
      sortByUpdateTimeDesc() {
    return addSortByInternal('updateTime', Sort.desc);
  }
}

extension DependencyVersionQueryWhereSortThenBy
    on QueryBuilder<DependencyVersion, DependencyVersion, QSortThenBy> {
  QueryBuilder<DependencyVersion, DependencyVersion, QAfterSortBy> thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<DependencyVersion, DependencyVersion, QAfterSortBy>
      thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<DependencyVersion, DependencyVersion, QAfterSortBy>
      thenByName() {
    return addSortByInternal('name', Sort.asc);
  }

  QueryBuilder<DependencyVersion, DependencyVersion, QAfterSortBy>
      thenByNameDesc() {
    return addSortByInternal('name', Sort.desc);
  }

  QueryBuilder<DependencyVersion, DependencyVersion, QAfterSortBy>
      thenByPreReleaseVersion() {
    return addSortByInternal('preReleaseVersion', Sort.asc);
  }

  QueryBuilder<DependencyVersion, DependencyVersion, QAfterSortBy>
      thenByPreReleaseVersionDesc() {
    return addSortByInternal('preReleaseVersion', Sort.desc);
  }

  QueryBuilder<DependencyVersion, DependencyVersion, QAfterSortBy>
      thenByPreReleasing() {
    return addSortByInternal('preReleasing', Sort.asc);
  }

  QueryBuilder<DependencyVersion, DependencyVersion, QAfterSortBy>
      thenByPreReleasingDesc() {
    return addSortByInternal('preReleasing', Sort.desc);
  }

  QueryBuilder<DependencyVersion, DependencyVersion, QAfterSortBy>
      thenByStableVersion() {
    return addSortByInternal('stableVersion', Sort.asc);
  }

  QueryBuilder<DependencyVersion, DependencyVersion, QAfterSortBy>
      thenByStableVersionDesc() {
    return addSortByInternal('stableVersion', Sort.desc);
  }

  QueryBuilder<DependencyVersion, DependencyVersion, QAfterSortBy>
      thenByUpdateTime() {
    return addSortByInternal('updateTime', Sort.asc);
  }

  QueryBuilder<DependencyVersion, DependencyVersion, QAfterSortBy>
      thenByUpdateTimeDesc() {
    return addSortByInternal('updateTime', Sort.desc);
  }
}

extension DependencyVersionQueryWhereDistinct
    on QueryBuilder<DependencyVersion, DependencyVersion, QDistinct> {
  QueryBuilder<DependencyVersion, DependencyVersion, QDistinct> distinctById() {
    return addDistinctByInternal('id');
  }

  QueryBuilder<DependencyVersion, DependencyVersion, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('name', caseSensitive: caseSensitive);
  }

  QueryBuilder<DependencyVersion, DependencyVersion, QDistinct>
      distinctByPreReleaseVersion({bool caseSensitive = true}) {
    return addDistinctByInternal('preReleaseVersion',
        caseSensitive: caseSensitive);
  }

  QueryBuilder<DependencyVersion, DependencyVersion, QDistinct>
      distinctByPreReleasing() {
    return addDistinctByInternal('preReleasing');
  }

  QueryBuilder<DependencyVersion, DependencyVersion, QDistinct>
      distinctByStableVersion({bool caseSensitive = true}) {
    return addDistinctByInternal('stableVersion', caseSensitive: caseSensitive);
  }

  QueryBuilder<DependencyVersion, DependencyVersion, QDistinct>
      distinctByUpdateTime() {
    return addDistinctByInternal('updateTime');
  }
}

extension DependencyVersionQueryProperty
    on QueryBuilder<DependencyVersion, DependencyVersion, QQueryProperty> {
  QueryBuilder<DependencyVersion, int?, QQueryOperations> idProperty() {
    return addPropertyNameInternal('id');
  }

  QueryBuilder<DependencyVersion, String, QQueryOperations> nameProperty() {
    return addPropertyNameInternal('name');
  }

  QueryBuilder<DependencyVersion, String, QQueryOperations>
      preReleaseVersionProperty() {
    return addPropertyNameInternal('preReleaseVersion');
  }

  QueryBuilder<DependencyVersion, bool, QQueryOperations>
      preReleasingProperty() {
    return addPropertyNameInternal('preReleasing');
  }

  QueryBuilder<DependencyVersion, String, QQueryOperations>
      stableVersionProperty() {
    return addPropertyNameInternal('stableVersion');
  }

  QueryBuilder<DependencyVersion, DateTime, QQueryOperations>
      updateTimeProperty() {
    return addPropertyNameInternal('updateTime');
  }
}
