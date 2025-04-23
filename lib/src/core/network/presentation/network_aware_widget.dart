import 'package:flutter/material.dart';

import 'package:oyan/src/core/network/network_status_notifier.dart';
import 'package:oyan/src/core/network/presentation/network_status_pop_up.dart';
import 'package:provider/provider.dart';

class NetworkAwareWidget extends StatelessWidget {
  final Widget child;

  const NetworkAwareWidget({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        child,
        Consumer<NetworkStatusNotifier>(
          builder: (context, connectionStatus, _) {
            if (!connectionStatus.hasConnection) {
              return const Directionality(
                textDirection: TextDirection.ltr,
                child: NetworkStatusPopUp(),
              );
            }
            return const SizedBox.shrink();
          },
        ),
      ],
    );
  }
}
