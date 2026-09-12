import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefHelper {
  static SharedPreferences? _sharedPrefs;
  factory SharedPrefHelper() => SharedPrefHelper._internal();
  SharedPrefHelper._internal();

  Future<void> init() async {
    _sharedPrefs ??= await SharedPreferences.getInstance();
  }

  static Future<void> setString(String key, String value) async {
    await _sharedPrefs?.setString(key, value);
  }

  static String? getString(String key) {
    return _sharedPrefs?.getString(key);
  }

  static Future<void> setBool(String key, bool value) async {
    await _sharedPrefs?.setBool(key, value);
  }

  static bool? getBool(String key) {
    return _sharedPrefs?.getBool(key);
  }

  static Future<void> setInt(String key, int value) async {
    await _sharedPrefs?.setInt(key, value);
  }

  static int? getInt(String key) {
    return _sharedPrefs?.getInt(key);
  }

  static Future<void> setDouble(String key, double value) async {
    await _sharedPrefs?.setDouble(key, value);
  }

  static double? getDouble(String key) {
    return _sharedPrefs?.getDouble(key);
  }
}
