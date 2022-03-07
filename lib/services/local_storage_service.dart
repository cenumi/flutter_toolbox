import 'package:shared_preferences/shared_preferences.dart';

class LocalStorageService {
  final sp = SharedPreferences.getInstance();

  Future<bool> saveString(String key, String value) => sp.then((sp) => sp.setString(key, value));

  Future<bool> saveBool(String key, {required bool value}) => sp.then((sp) => sp.setBool(key, value));

  Future<String?> getString(String key) => sp.then((sp) => sp.getString(key));

  Future<bool?> getBool(String key) => sp.then((sp) => sp.getBool(key));

  Future<bool> saveList(String key, List<String> values) => sp.then((sp) => sp.setStringList(key, values));

  Future<List<String>?> getStringList(String key) => sp.then((sp) => sp.getStringList(key));
}
