import 'package:flutter_toolbox/core/packages.dart';
import 'package:flutter_toolbox/models/project_models.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

final localStorageServiceProvider = Provider((_) => LocalStorageService());

class LocalStorageService {
  static const dbName = 'flutter_toolbox_db';
  static late final SharedPreferences sharedPreferences;
  static late final Isar database;

  static Future<void> init({bool useInspector = false}) async {
    sharedPreferences = await SharedPreferences.getInstance();
    final dir = await getApplicationSupportDirectory();
    database = await Isar.open(
      schemas: [ProjectSchema, DependencyVersionSchema],
      directory: dir.path,
      name: dbName,
      inspector: useInspector,
    );
  }

  Isar get db => database;

  SharedPreferences get sp => sharedPreferences;

  Future<bool> saveString(String key, String value) => sp.setString(key, value);
}
