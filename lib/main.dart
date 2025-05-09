import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:oyan/src/app/application.dart';
import 'package:oyan/src/core/network/network_status_notifier.dart';
import 'package:oyan/src/core/services/injectable/injectable_service.dart';
import 'package:oyan/src/core/services/storage/storage_service_impl.dart';
import 'package:oyan/src/core/utils/helpers/ui_helpers.dart';
import 'package:provider/provider.dart';

final StorageServiceImpl storageService = StorageServiceImpl();
void main([List<String>? args, AppFlavor flavor = AppFlavor.production]) async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  await storageService.init();
  await configureDependencies();
  // await FirebaseManager.initialize();
  // Initialize chat service
  // await ChatService.initializeChat();
  // Prevent landscape mode
  UIHelpers.statusBarTheme();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then(
    (_) {
      runApp(
        Material(
          child: ChangeNotifierProvider(
            create: (_) => NetworkStatusNotifier(),
            child: MainApp(
              flavor: AppFlavor.production,
            ),
          ),
        ),
      );
    },
  );
}
