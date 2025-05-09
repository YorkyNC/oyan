import 'package:oyan/src/core/services/centrifuge/chat_client.dart';

/// The address of the centrifugo service
///
/// Use ipconfig or ifconfig to find out the IP address of your machine
const String serverAddr = '192.168.0.115:8000';

/// The channel name to subscribe to

/// The user's name
const userName = 'dart';

/// The user's JWT token
///
/// generate user JWT token for user "dart":
/// ./centrifugo gentoken --user dart

/// The subscription token
///
/// generate subscription JWT token for user "dart" and channel "chat:index":
/// ./centrifugo gensubtoken --user dart --channel chat:index
const subscriptionJwtToken =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkYXJ0IiwiZXhwIjoyMjc5NDQ0MDE4LCJpYXQiOjE2NzQ2NDQwMTgsImNoYW5uZWwiOiJjaGF0OmluZGV4In0.FjpnF6ofq3XCr1iqnwTZcpxCx6btuzCnn29DAIJbsBo';

final ChatClient cli = ChatClient();
