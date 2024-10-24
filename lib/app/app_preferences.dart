import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesService {
  static late SharedPreferences _preferences;

  static Future<void> initialize() async => _preferences = await SharedPreferences.getInstance();
}
