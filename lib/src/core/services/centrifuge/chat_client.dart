// ignore_for_file: avoid_print

import 'dart:async';
import 'dart:convert';
import 'dart:math' as math;

import 'package:centrifuge/centrifuge.dart';
import 'package:flutter/material.dart';
import 'package:oyan/src/features/login/domain/usecases/refresh_token_use_case.dart';

import '../../../features/chat/data/models/chat_entity.dart';
import '../../../features/chat/data/models/chat_models.dart';
import '../../router/router.dart';
import '../injectable/injectable_service.dart';

class ChatClient {
  late Client _client;
  StreamSubscription<ConnectedEvent>? _connectedSub;
  StreamSubscription<ConnectingEvent>? _connectingSub;
  StreamSubscription<DisconnectedEvent>? _disconnSub;
  StreamSubscription<ErrorEvent>? _errorSub;
  Timer? _reconnectTimer;
  bool _isDisposed = false;
  int _reconnectAttempts = 0;
  static const int maxReconnectAttempts = 5;

  final refreshTokenUseCase = getIt<RefreshTokenUseCase>();

  Subscription? subscription;
  final _chatMsgController = StreamController<MessageSentEntity>.broadcast();
  final _messageSeenController = StreamController<MessageSeenEvent>.broadcast();
  final _connectionStateController = StreamController<bool>.broadcast();

  Stream<MessageSentEntity> get messages => _chatMsgController.stream;
  Stream<MessageSeenEvent> get messagesSeen => _messageSeenController.stream;
  Stream<bool> get connectionState => _connectionStateController.stream;

  void init(String token, String chatUserName, int chatUserId) {
    const url = 'ws://centrifugo.greeneye.kz/connection/websocket'; // Changed to WSS
    try {
      _client = createClient(
        url,
        ClientConfig(
          token: token,
          name: chatUserName,
          getToken: (p0) async {
            try {
              final result = await refreshTokenUseCase.call();
              if (result.isSuccessful) {
                debugPrint('Token refreshed successfully');
                return result.data!.accessToken;
              }
              debugPrint('Token refresh failed');
              return '';
            } catch (e) {
              debugPrint('Error refreshing token: $e');
              return '';
            }
          },
          timeout: const Duration(seconds: 30),
          maxReconnectDelay: const Duration(seconds: 5),
        ),
      );
    } catch (e, stack) {
      debugPrint('Error initializing client: $e\n$stack');
      rethrow;
    }
  }

  Future<void> connect(VoidCallback onConnect) async {
    if (_isDisposed) {
      debugPrint('Client is disposed, not connecting');
      return;
    }

    try {
      await _cleanupExistingSubscriptions();
      await _setupEventListeners(onConnect);
      await _client.connect();
    } catch (e, stack) {
      debugPrint("Connection error: $e\n$stack");
      _handleConnectionError();
    }
  }

  Future<void> _cleanupExistingSubscriptions() async {
    await Future.wait([
      _connectedSub?.cancel() ?? Future.value(),
      _connectingSub?.cancel() ?? Future.value(),
      _disconnSub?.cancel() ?? Future.value(),
      _errorSub?.cancel() ?? Future.value(),
    ]);
  }

  Future<void> _setupEventListeners(VoidCallback onConnect) async {
    _connectedSub = _client.connected.listen(
      (event) {
        debugPrint("Connected to server");
        _reconnectAttempts = 0;
        _connectionStateController.add(true);
        onConnect();
      },
      onError: (e, stack) {
        debugPrint("Connected stream error: $e\n$stack");
        _handleConnectionError();
      },
    );

    _connectingSub = _client.connecting.listen(
      (event) => debugPrint("Connecting to server"),
      onError: (e, stack) {
        debugPrint("Connecting stream error: $e\n$stack");
        _handleConnectionError();
      },
    );

    _disconnSub = _client.disconnected.listen(
      (event) {
        debugPrint("Disconnected from server: ${event.reason}");
        _connectionStateController.add(false);
        _handleDisconnect(event.reason);
      },
      onError: (e, stack) {
        debugPrint("Disconnected stream error: $e\n$stack");
        _handleConnectionError();
      },
    );

    _errorSub = _client.error.listen(
      (event) {
        debugPrint("Client error: ${event.error}");
        _handleConnectionError();
      },
      onError: (e, stack) {
        debugPrint("Error stream error: $e\n$stack");
        _handleConnectionError();
      },
    );
  }

  void _handleConnectionError() {
    if (_isDisposed) return;
    _attemptReconnect();
  }

  void _handleDisconnect(String reason) {
    if (_isDisposed) return;
    debugPrint('Handling disconnect. Reason: $reason');
    _attemptReconnect();
  }

  void _attemptReconnect() {
    if (_isDisposed || _reconnectTimer != null || _reconnectAttempts >= maxReconnectAttempts) {
      return;
    }

    _reconnectAttempts++;
    final delay = Duration(seconds: math.min(5, _reconnectAttempts * 2));
    debugPrint('Attempting to reconnect in ${delay.inSeconds} seconds (attempt $_reconnectAttempts)');

    _reconnectTimer = Timer(delay, () async {
      _reconnectTimer = null;
      try {
        await connect(() {
          debugPrint('Reconnected successfully');
          _resubscribeIfNeeded();
        });
      } catch (e) {
        debugPrint('Reconnection attempt failed: $e');
        _handleConnectionError();
      }
    });
  }

  Future<void> subscribe(String channel) async {
    if (_isDisposed) return;

    try {
      subscription =
          _client.getSubscription(channel) ??
          _client.newSubscription(
            channel,
            SubscriptionConfig(token: st.getToken()!, recoverable: true, positioned: true, joinLeave: true),
          );

      subscription!.publication.listen(
        (event) {
          try {
            final decodedString = utf8.decode(event.data);
            debugPrint('Received message: $decodedString');

            final message = MessageSentEntity.fromJson(jsonDecode(decodedString));
            if (message.type == 'MessageSent') {
              _chatMsgController.add(message);
            }
          } catch (e, stack) {
            debugPrint('Error parsing message: $e\n$stack');
          }
        },
        onError: (e, stack) {
          debugPrint('Subscription stream error: $e\n$stack');
          _handleSubscriptionError();
        },
      );

      await subscription!.subscribe();
      debugPrint('Subscribed to channel: $channel');
    } catch (e) {
      debugPrint("Subscription error: $e");
      _handleSubscriptionError();
      rethrow;
    }
  }

  void _handleSubscriptionError() {
    if (_isDisposed) return;
    _resubscribeIfNeeded();
  }

  Future<void> _resubscribeIfNeeded() async {
    if (_isDisposed || subscription == null) return;

    try {
      if (subscription?.unsubscribed == true) {
        debugPrint('Resubscribing to channel');
        await subscription!.subscribe();
      }
    } catch (e) {
      debugPrint("Resubscription error: $e");
      // Wait before trying again
      await Future.delayed(const Duration(seconds: 2));
      _handleSubscriptionError();
    }
  }

  Future<void> dispose() async {
    _isDisposed = true;
    _reconnectTimer?.cancel();

    try {
      if (subscription != null) {
        await subscription!.unsubscribe();
      }

      await Future.wait([
        _connectedSub?.cancel() ?? Future.value(),
        _connectingSub?.cancel() ?? Future.value(),
        _disconnSub?.cancel() ?? Future.value(),
        _errorSub?.cancel() ?? Future.value(),
      ]);

      await Future.wait([
        _chatMsgController.close(),
        _messageSeenController.close(),
        _connectionStateController.close(),
      ]);

      await _client.disconnect();
    } catch (e) {
      debugPrint("Dispose error: $e");
    }
  }
}
