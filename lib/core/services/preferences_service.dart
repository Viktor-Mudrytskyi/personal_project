import 'package:shared_preferences/shared_preferences.dart';

class PreferncesService {
  final SharedPreferences _prefs;

  PreferncesService({required SharedPreferences prefs}) : _prefs = prefs;

  // static const String _loginKey = 'loginKey';
  // static const String _passwordKey = 'passwordKey';

  // Future<void> setLogin(String login) async {
  //   await _prefs.setString(_loginKey, login);
  // }

  // Future<void> setPassword(String password) async {
  //   await _prefs.setString(_passwordKey, password);
  // }

  Future<void> clearAll() async {
    await _prefs.clear();
  }
}
