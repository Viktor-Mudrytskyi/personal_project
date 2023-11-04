import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorageManager {
  final FlutterSecureStorage storage;

  SecureStorageManager({required this.storage});

  static const String _emailKey = 'emailKey';
  static const String _passwordKey = 'passwordKey';

  Future<void> writeEmail(String email) async {
    await storage.write(
      key: _emailKey,
      value: email,
    );
  }

  Future<void> writePassword(String password) async {
    await storage.write(
      key: _passwordKey,
      value: password,
    );
  }

  Future<String?> readEmail() {
    return storage.read(key: _emailKey);
  }

  Future<String?> readPassword() {
    return storage.read(key: _passwordKey);
  }

  Future<void> deleteAll() async {
    storage.deleteAll();
  }
}
