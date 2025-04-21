import 'dart:developer';
import 'dart:math' show min;

import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'storage_service.dart';

class StorageServiceImpl extends ChangeNotifier implements StorageService {
  static final StorageServiceImpl _instance = StorageServiceImpl._internal();

  factory StorageServiceImpl() {
    return _instance;
  }

  StorageServiceImpl._internal();
  final _secureStorage = const FlutterSecureStorage();
  // Auth-related keys
  static const String _tokenKey = 'TOKEN';
  static const String _refreshTokenKey = 'REFRESH_TOKEN';
  static const String _roleKey = 'ROLE';
  static const String _languageCode = 'LANGUAGE_CODE';
  static const String _csrfTokenKey = 'CSRF_TOKEN';
  static const String _csrfTokenExpiryKey = 'CSRF_TOKEN_EXPIRY';
  static const String _csrfCookieKey = 'CSRF_COOKIE';
  static const String _sessionIdKey = 'session_id';

  // Device-related keys
  static const String _clientIdKey = 'CLIENT_ID';
  static const String _lastSentFcmTokenKey = 'LAST_SENT_FCM_TOKEN';
  static const String _preferredGenresKey = 'PREFERRED_GENRES';

  late Box authBox;
  late Box deviceBox;

  String? _cachedLastSentFcmToken;
  String? _cachedSessionId;

  // IMPROVED SESSION ID HANDLING
  String? getSessionId() {
    try {
      // First try to return the cached value
      if (_cachedSessionId != null) {
        log('Returning cached session ID: ${_cachedSessionId!.substring(0, min(5, _cachedSessionId!.length))}...');
        return _cachedSessionId;
      }

      // Try to get from Hive box
      final sessionId = authBox.get(_sessionIdKey);
      if (sessionId != null) {
        _cachedSessionId = sessionId;
        log('Got session ID from Hive: ${sessionId.substring(0, min<int>(5, sessionId.length))}...');
        return sessionId;
      }

      // Didn't find it
      log('Session ID not found in cache or Hive');
      return null;
    } catch (e) {
      log('Error getting session ID: $e');
      return null;
    }
  }

  Future<String?> getSessionIdAsync() async {
    try {
      // Use cached value if available
      if (_cachedSessionId != null) return _cachedSessionId;

      // Try Hive first
      final sessionId = authBox.get(_sessionIdKey);
      if (sessionId != null) {
        _cachedSessionId = sessionId;
        log('Got session ID async from Hive: ${sessionId.substring(0, min<int>(5, sessionId.length))}...');
        return sessionId;
      }

      // As a fallback, try secure storage
      final secureSessionId = await _secureStorage.read(key: _sessionIdKey);
      if (secureSessionId != null) {
        // If found in secure storage but not in Hive, migrate it
        _cachedSessionId = secureSessionId;
        await authBox.put(_sessionIdKey, secureSessionId);
        log('Migrated session ID from secure storage to Hive');
        return secureSessionId;
      }

      log('Session ID not found anywhere in async check');
      return null;
    } catch (e) {
      log('Error getting session ID async: $e');
      return null;
    }
  }

  Future<void> deleteSessionId() async {
    try {
      log('Deleting session ID');
      _cachedSessionId = null;

      // Delete from Hive
      await authBox.delete(_sessionIdKey);

      // Also try to delete from secure storage as cleanup
      try {
        await _secureStorage.delete(key: _sessionIdKey);
      } catch (e) {
        // Non-critical if this fails
        log('Non-critical: Failed to delete session ID from secure storage: $e');
      }
    } catch (e) {
      log('Error deleting session ID: $e');
    }
  }

  Future<void> setSessionId(String sessionId) async {
    if (authBox.isOpen) {
      _cachedSessionId = sessionId;
      await authBox.put(_sessionIdKey, sessionId);
      notifyListeners();
    }
  }

  // Rest of the class remains the same...

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
    if (authBox.isOpen) {
      await authBox.put(_tokenKey, token);
      notifyListeners();
    }
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
      log('CSRF token set: $token');
      notifyListeners();
    }
  }

  String? getCsrfToken() {
    final token = authBox.get(_csrfTokenKey);
    final expiryStr = authBox.get(_csrfTokenExpiryKey);

    if (token == null || expiryStr == null) {
      log('CSRF token not found or missing expiry');
      return null;
    }

    final expiryDate = DateTime.parse(expiryStr);
    if (DateTime.now().isAfter(expiryDate)) {
      // Token has expired, delete it
      log('CSRF token expired, deleting');
      deleteCsrfToken();
      return null;
    }

    log('CSRF token retrieved: $token');
    return token;
  }

  Future<void> setCsrfCookie(String cookie) async {
    try {
      // Log the received cookie for debugging
      log('Setting CSRF cookie: $cookie');

      // Extract the actual cookie value from the Set-Cookie header
      final cookieValue = cookie.split(';').first;
      await authBox.put(_csrfCookieKey, cookieValue);
      log('CSRF cookie stored: $cookieValue');
      notifyListeners();
    } catch (e) {
      log('Error setting CSRF cookie: $e');
      rethrow;
    }
  }

  String? getCsrfCookie() {
    try {
      final cookie = authBox.get(_csrfCookieKey);
      log('Retrieved CSRF cookie: $cookie');
      return cookie;
    } catch (e) {
      log('Error getting CSRF cookie: $e');
      return null;
    }
  }

  Future<void> deleteCsrfToken() async {
    log('Deleting CSRF tokens');
    await authBox.delete(_csrfTokenKey);
    await authBox.delete(_csrfTokenExpiryKey);
    await authBox.delete(_csrfCookieKey);
    notifyListeners();
  }

  // Clear methods
  Future<void> clearAuth() async {
    if (authBox.isOpen) {
      log('Clearing all auth data');
      await authBox.clear();
      notifyListeners();
    }
  }

  // Clear only device data
  Future<void> clearDeviceData() async {
    if (deviceBox.isOpen) {
      log('Clearing device data');
      _cachedLastSentFcmToken = null;
      await deviceBox.clear();
    }
  }

  // Interface compatibility method - only clears auth data
  @override
  Future<void> clear() async {
    if (authBox.isOpen) {
      log('Clearing auth data');
      await authBox.clear();
      _cachedSessionId = null;
      notifyListeners();
    }
  }

  // Clear all data
  Future<void> clearAll() async {
    log('Clearing all data');
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
    try {
      _cachedLastSentFcmToken = deviceBox.get(_lastSentFcmTokenKey);

      // Initialize session ID from Hive
      _cachedSessionId = authBox.get(_sessionIdKey);
      if (_cachedSessionId != null) {
        log('Initialized cached session ID: ${_cachedSessionId!.substring(0, min(5, _cachedSessionId!.length))}...');
      } else {
        log('No session ID found during initialization');
      }
    } catch (e) {
      log('Error initializing cached values: $e');
    }
  }

  bool hasSessionId() {
    return _cachedSessionId != null && _cachedSessionId!.isNotEmpty;
  }

  @override
  bool checkLoggedIn() {
    final hasToken = getCsrfToken() != null && getCsrfToken()!.isNotEmpty;
    // final hasSession = hasSessionId();
    // log('Authentication check - Token: $hasToken, Session: $hasSession');
    // return hasToken || hasSession;
    return hasToken;
  }

  @override
  bool get isLoggedIn => checkLoggedIn();

  Future<void> setPreferredGenres(List<dynamic>? genres) async {
    if (authBox.isOpen) {
      await authBox.put(_preferredGenresKey, genres);
      notifyListeners();
    }
  }

  List<dynamic>? getPreferredGenres() {
    return authBox.get(_preferredGenresKey);
  }

  Future<void> clearPreferredGenres() async {
    if (authBox.isOpen) {
      await authBox.delete(_preferredGenresKey);
      notifyListeners();
    }
  }
}
