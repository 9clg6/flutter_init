import 'package:shared_preferences/shared_preferences.dart';

/// User Preferences Storage
class UserPreferencesStorage {
  /// User Preferences Storage constructor
  UserPreferencesStorage._();

  static const String _emailKey = 'user_email_key';

  /// Static method to get SharedPreferences instance
  static Future<SharedPreferences> get _prefs async {
    return SharedPreferences.getInstance();
  }

  /// Save user email
  static Future<void> saveUserEmail(String email) async {
    final SharedPreferences prefs = await _prefs;
    await prefs.setString(_emailKey, email);
  }

  /// Get user email
  static Future<String?> getUserEmail() async {
    final SharedPreferences prefs = await _prefs;
    return prefs.getString(_emailKey);
  }

  /// Remove user email
  static Future<void> removeUserEmail() async {
    final SharedPreferences prefs = await _prefs;
    await prefs.remove(_emailKey);
  }

  /// Check if user email exists
  static Future<bool> hasUserEmail() async {
    final SharedPreferences prefs = await _prefs;
    return prefs.containsKey(_emailKey);
  }
}
