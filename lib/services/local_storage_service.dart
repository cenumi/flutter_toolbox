import 'package:flutter_toolbox/core/packages.dart';
import 'package:flutter_toolbox/models/project_models.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

final localStorageServiceProvider = Provider((_) => LocalStorageService());

class LocalStorageService {
  static const dbName = 'flutter_toolbox_db';

  static Future<void> init({bool useInspector = false}) async {
    final dir = await getApplicationSupportDirectory();
    await Isar.open(
      schemas: [ProjectSchema, DependencyVersionSchema],
      directory: dir.path,
      name: dbName,
      inspector: useInspector,
    );
  }

  final sp = SharedPreferences.getInstance();

  final db = Isar.getInstance(dbName)!;

  Future<bool> saveString(String key, String value) => sp.then((sp) => sp.setString(key, value));
}
