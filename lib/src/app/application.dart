import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:oyan/src/core/localization/localization_controller.dart';
import 'package:oyan/src/core/network/presentation/network_aware_widget.dart';

import '../core/localization/generated/l10n.dart';
import '../core/router/router.dart';
import '../core/theme/theme.dart';
import 'imports.dart';

part 'flavor_builds.dart';

class MainApp extends StatefulWidget {
  const MainApp({
    required this.flavor,
    super.key,
  });

  final AppFlavor flavor;

  @override
  State<MainApp> createState() => MainAppState();
}

class MainAppState extends State<MainApp> {
  final GoRouter _router = routerProvider();
  final LanguageController _languageController = LanguageController();

  @override
  void initState() {
    super.initState();

    _languageController.languageNotifier.addListener(_onLanguageChanged);

    Timer(
      const Duration(seconds: 2),
      FlutterNativeSplash.remove,
    );
  }

  void _onLanguageChanged() {
    if (mounted) setState(() {});
  }

  @override
  void dispose() {
    _languageController.languageNotifier.removeListener(_onLanguageChanged);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _buildApp(
      widget.flavor,
      _router,
      _languageController.currentLanguage,
    );
  }
}
