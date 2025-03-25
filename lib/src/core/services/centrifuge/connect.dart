import 'dart:math';

import 'package:flutter/material.dart';

import '../../router/router.dart';
import 'conf.dart' as conf;
import 'state.dart' as state;

class ConnectToServer extends StatefulWidget {
  const ConnectToServer({super.key});

  @override
  State<ConnectToServer> createState() => _ConnectToServerState();
}

class _ConnectToServerState extends State<ConnectToServer> {
  _ConnectToServerState();

  @override
  void initState() {
    conf.cli
      ..init(st.getToken()!, state.username, Random().nextInt(100))
      ..connect(
        () {
          print("Received data: ");
          setState(() {});
        },
      );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            CircularProgressIndicator(),
            SizedBox(height: 15.0),
            Text("Connecting to server ...")
          ],
        ),
      ),
    );
  }
}
