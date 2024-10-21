import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesService {
  static SharedPreferences? _preferences;

  static Future<void> initialize() async {
    _preferences = await SharedPreferences.getInstance();
  }

  static Future<void> setString(String key, String value) async {
    await _preferences?.setString(key, value);
  }

  static Future<void> setBool(String key, bool value) async {
    await _preferences?.setBool(key, value);
  }

  static String? getString(String key) {
    return _preferences?.getString(key);
  }

  static bool? getBool(String key) {
    return _preferences?.getBool(key);
  }

  static Future<void> remove(String key) async {
    await _preferences?.remove(key);
  }
}
