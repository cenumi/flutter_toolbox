import 'package:shared_preferences/shared_preferences.dart';

class LocalStorageService {
  final sp = SharedPreferences.getInstance();

  Future<bool> saveString(String key, String value) => sp.then((sp) => sp.setString(key, value));
}
