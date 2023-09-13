
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class StorageCore {
  final storage = const FlutterSecureStorage();

  void saveToken(String token) async {
    await storage.write(key: 'token', value: token);
  }

  void deleteToken() async {
    await storage.delete(key: 'token');
    await storage.deleteAll();
  }

  Future<String?> readToken() async {
    var token = await storage.read(key: 'token');
    return token;
  }

  Future<bool> ensureStorageReady() async {
    return await storage.read(key: 'token') != null;
  }

  Future<void> writeString(String key, String value) async {
    return await storage.write(key: key, value: value);
  }

  Future<String> readString(String key) async {
    return await storage.read(key: key) ?? "";
  }

}
