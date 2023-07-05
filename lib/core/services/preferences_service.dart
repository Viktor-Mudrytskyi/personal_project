import 'package:shared_preferences/shared_preferences.dart';

class PreferncesService {
  final SharedPreferences _prefs;

  PreferncesService({required SharedPreferences prefs}) : _prefs = prefs;

  static const String _loginKey = 'loginKey';
  static const String _passwordKey = 'passwordKey';
  static const String _useFingerprint = 'fingerprintKey';
  static const String _rememberMe = 'rememberMeKey';

  Future<void> setLogin(String login) async {
    await _prefs.setString(_loginKey, login);
  }

  Future<void> setPassword(String password) async {
    await _prefs.setString(_passwordKey, password);
  }

  Future<void> setUseFingerprint(bool value) async {
    await _prefs.setBool(_useFingerprint, value);
  }

  Future<void> setIsRememberMe(bool value) async {
    await _prefs.setBool(_rememberMe, value);
  }

  String getLogin() => _prefs.getString(_loginKey) ?? '';

  String getPassword() => _prefs.getString(_passwordKey) ?? '';

  bool getIsUseFingerprint() => _prefs.getBool(_useFingerprint) ?? false;

  bool getIsRememberMe() => _prefs.getBool(_rememberMe) ?? false;

  Future<void> clearAll() async {
    await _prefs.clear();
  }
}
