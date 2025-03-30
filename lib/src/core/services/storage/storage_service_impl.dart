import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'storage_service.dart';

class StorageServiceImpl extends ChangeNotifier implements StorageService {
  static final StorageServiceImpl _instance = StorageServiceImpl._internal();

  factory StorageServiceImpl() {
    return _instance;
  }

  StorageServiceImpl._internal();

  // Auth-related keys
  static const String _tokenKey = 'TOKEN';
  static const String _refreshTokenKey = 'REFRESH_TOKEN';
  static const String _roleKey = 'ROLE';
  static const String _languageCode = 'LANGUAGE_CODE';
  static const String _csrfTokenKey = 'CSRF_TOKEN';
  static const String _csrfTokenExpiryKey = 'CSRF_TOKEN_EXPIRY';
  static const String _csrfCookieKey = 'CSRF_COOKIE';

  // Device-related keys
  static const String _clientIdKey = 'CLIENT_ID';
  static const String _lastSentFcmTokenKey = 'LAST_SENT_FCM_TOKEN';

  late Box authBox;
  late Box deviceBox;

  String? _cachedLastSentFcmToken;

  // Device-related methods

  Future<void> setLastSentFcmToken(String? token) async {
    try {
      _cachedLastSentFcmToken = token;
      await deviceBox.put(_lastSentFcmTokenKey, token);
      debugPrint('Last sent FCM token saved successfully: $token');
    } catch (e) {
      debugPrint('Error saving last sent FCM token: $e');
      rethrow;
    }
  }

  String? getLastSentFcmToken() {
    try {
      if (_cachedLastSentFcmToken != null) return _cachedLastSentFcmToken;
      _cachedLastSentFcmToken = deviceBox.get(_lastSentFcmTokenKey);
      debugPrint('Retrieved last sent FCM token: $_cachedLastSentFcmToken');
      return _cachedLastSentFcmToken;
    } catch (e) {
      debugPrint('Error getting last sent FCM token: $e');
      return null;
    }
  }

  @override
  Future<void> setClientId(String clientId) async {
    try {
      await deviceBox.put(_clientIdKey, clientId);
      debugPrint('Client ID saved successfully: $clientId');
    } catch (e) {
      debugPrint('Error saving client ID: $e');
      rethrow;
    }
  }

  @override
  String getClientId() {
    try {
      final clientId = deviceBox.get(_clientIdKey);
      debugPrint('Retrieved client ID: $clientId');
      return clientId ?? '';
    } catch (e) {
      debugPrint('Error getting client ID: $e');
      return '';
    }
  }

  // Auth-related methods
  @override
  Future<void> setToken(String? token) async {
    log('$token', name: 'ACCESS_TOKEN');
    await authBox.put(_tokenKey, token);
    notifyListeners();
  }

  @override
  Future<void> setRole(String? role) async {
    log('$role', name: 'CURRENT_ROLE');
    await authBox.put(_roleKey, role);
    notifyListeners();
  }

  @override
  Future<void> setRefreshToken(String? refreshToken) async {
    log('$refreshToken', name: 'REFRESH_TOKEN');
    await authBox.put(_refreshTokenKey, refreshToken);
    notifyListeners();
  }

  @override
  Future<void> setLanguageCode(String code) async {
    await authBox.put(_languageCode, code);
  }

  @override
  String? getToken() {
    return authBox.get(_tokenKey);
  }

  @override
  String? getRole() {
    return authBox.get(_roleKey);
  }

  @override
  String? getRefreshToken() {
    return authBox.get(_refreshTokenKey);
  }

  @override
  Future<void> deleteToken() async {
    await authBox.delete(_tokenKey);
    notifyListeners();
  }

  @override
  Future<void> deleteRefreshToken() async {
    await authBox.delete(_refreshTokenKey);
    notifyListeners();
  }

  @override
  String? getLanguageCode() {
    return authBox.get(_languageCode);
  }

  // CSRF Token methods
  Future<void> setCsrfToken(String? token) async {
    if (token != null) {
      // Set token with 1 year expiration
      final expiryDate = DateTime.now().add(const Duration(days: 365));
      await authBox.put(_csrfTokenKey, token);
      await authBox.put(_csrfTokenExpiryKey, expiryDate.toIso8601String());
      notifyListeners();
    } else {}
  }

  String? getCsrfToken() {
    final token = authBox.get(_csrfTokenKey);
    final expiryStr = authBox.get(_csrfTokenExpiryKey);

    if (token == null || expiryStr == null) {
      return null;
    }

    final expiryDate = DateTime.parse(expiryStr);
    if (DateTime.now().isAfter(expiryDate)) {
      // Token has expired, delete it
      deleteCsrfToken();
      return null;
    }

    return token;
  }

  void setCsrfCookie(String cookie) {
    try {
      // Log the received cookie for debugging

      // Store the token value directly since we're now receiving just the value
      authBox.put(_csrfCookieKey, cookie);

      notifyListeners();
    } catch (e) {}
  }

  String? getCsrfCookie() {
    try {
      final cookie = authBox.get(_csrfCookieKey);

      return cookie;
    } catch (e) {
      return null;
    }
  }

  Future<void> deleteCsrfToken() async {
    await authBox.delete(_csrfTokenKey);
    await authBox.delete(_csrfTokenExpiryKey);
    await authBox.delete(_csrfCookieKey);
    notifyListeners();
  }

  // Clear methods
  Future<void> clearAuth() async {
    if (authBox.isOpen) {
      await authBox.clear();
      notifyListeners();
    }
  }

  // Clear only device data
  Future<void> clearDeviceData() async {
    if (deviceBox.isOpen) {
      _cachedLastSentFcmToken = null;
      await deviceBox.clear();
    }
  }

  // Interface compatibility method - only clears auth data
  @override
  Future<void> clear() async {
    if (authBox.isOpen) {
      await authBox.clear();
      notifyListeners();
    }
  }

  // Clear all data
  Future<void> clearAll() async {
    await clearAuth();
    await clearDeviceData();
  }

  // Initialization methods
  @override
  Future<void> init() async {
    await Hive.initFlutter();
    authBox = await Hive.openBox('auth');
    deviceBox = await Hive.openBox('device');
    _initializeCachedValues();
  }

  @override
  Future<void> openBox() async {
    authBox = await Hive.openBox('auth');
    deviceBox = await Hive.openBox('device');
    _initializeCachedValues();
  }

  void _initializeCachedValues() {
    _cachedLastSentFcmToken = deviceBox.get(_lastSentFcmTokenKey);
  }

  @override
  bool checkLoggedIn() {
    return getToken() != null;
  }

  @override
  bool get isLoggedIn => checkLoggedIn();
}
