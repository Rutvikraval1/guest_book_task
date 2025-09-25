
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class TokenStorageService {
  final _storage = const FlutterSecureStorage();

  static const _keyAccess = 'ACCESS_TOKEN';
  static const _keyRefresh = 'REFRESH_TOKEN';

  Future<void> saveTokens(String accessToken, String refreshToken) async {
    await _storage.write(key: _keyAccess, value: accessToken);
    await _storage.write(key: _keyRefresh, value: refreshToken);
  }

  Future<String?> getAccessToken() async {
    return await _storage.read(key: _keyAccess);
  }

  Future<String?> getRefreshToken() async {
    return await _storage.read(key: _keyRefresh);
  }

  Future<void> clearTokens() async {
    await _storage.delete(key: _keyAccess);
    await _storage.delete(key: _keyRefresh);
  }
}
