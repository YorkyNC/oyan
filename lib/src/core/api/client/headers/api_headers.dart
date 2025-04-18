import 'package:dio/dio.dart';

import '../../../services/storage/storage_service_impl.dart';

class ApiHeaders {
  static final StorageServiceImpl _st = StorageServiceImpl();

  /// Get common headers used across all API requests
  static Map<String, String> get headers {
    final Map<String, String> headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
    };

    // Add authentication headers if available
    final token = _st.getToken();
    final csrfToken = _st.getCsrfToken();
    final sessionId = _st.getSessionId();

    if (token != null) {
      headers['Authorization'] = 'Bearer $token';
    }
    if (csrfToken != null) {
      headers['X-CSRFToken'] = csrfToken;
    }
    if (sessionId != null) {
      headers['Cookie'] = sessionId;
    }

    return headers;
  }

  /// Get headers wrapped in Dio Options
  static Options get dioOptions => Options(headers: headers);
}
