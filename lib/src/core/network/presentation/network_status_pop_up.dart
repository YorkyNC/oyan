import 'package:oyan/src/app/imports.dart';
import 'package:oyan/src/core/extensions/build_context_extension.dart';
import 'package:oyan/src/core/network/enum/network_check_state_enum.dart';
import 'package:oyan/src/core/network/network_status_notifier.dart';
import 'package:provider/provider.dart' as provider;

class NetworkStatusPopUp extends StatelessWidget {
  const NetworkStatusPopUp({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      child: GestureDetector(
        onTap: () {},
        child: Container(
          color: context.colors.black.withAlpha(50),
          child: Center(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.wifi_off,
                    size: 120,
                    color: context.colors.gray500,
                  ),
                  const SizedBox(height: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Слабое интернет соединение',
                        style: context.typography.textlgSemibold.copyWith(color: context.colors.black),
                      ),
                      const SizedBox(height: 16),
                      Text(
                        'Проверьте подключение к интернету и повторите попытку',
                        style: context.typography.textmdRegular.copyWith(
                          color: context.colors.black,
                        ),
                      ),
                      const SizedBox(height: 16),
                      provider.Consumer<NetworkStatusNotifier>(
                        builder: (context, connectionStatus, _) {
                          final networkStatus = provider.Provider.of<NetworkStatusNotifier>(context, listen: false);
                          final isChecking = networkStatus.checkState == NetworkCheckStateEnum.checking;

                          return OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              overlayColor: context.colors.gray500,
                              side: BorderSide(
                                color: context.colors.gray300,
                              ),
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(8),
                                ),
                              ),
                            ),
                            onPressed: isChecking
                                ? null
                                : () {
                                    networkStatus.checkConnectivity();
                                  },
                            child: Center(
                              child: isChecking
                                  ? SizedBox(
                                      height: 20,
                                      width: 20,
                                      child: CircularProgressIndicator(
                                        strokeWidth: 2,
                                        valueColor: AlwaysStoppedAnimation<Color>(context.colors.blueGray500),
                                      ),
                                    )
                                  : Text(
                                      'Повторить',
                                      style: context.typography.textmdSemibold.copyWith(
                                        color: context.colors.gray700,
                                      ),
                                    ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
