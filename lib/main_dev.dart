import 'package:oyan/src/app/application.dart';
import 'package:provider/provider.dart' as p;

import 'src/app/imports.dart';
import 'src/core/services/auth/role_notifier.dart';
import 'src/core/services/injectable/injectable_service.dart';
import 'src/core/services/storage/storage_service_impl.dart';

final StorageServiceImpl storageService = StorageServiceImpl();
void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  await storageService.init();
  debugPrint('Initial client ID from storage: ${storageService.getClientId()}');

  await configureDependencies();

  // Initialize chat servic
  UIHelpers.statusBarTheme();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  // Prevent landscape mode
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then((_) {
    runApp(
      Material(
        child: p.MultiProvider(
          providers: [p.ChangeNotifierProvider(create: (_) => RoleNotifier())],
          child: MainApp(flavor: AppFlavor.development),
        ),
      ),
    );
  });
}
