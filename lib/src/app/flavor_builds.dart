part of 'application.dart';

enum AppFlavor { development, staging, production }

// Custom MaterialLocalizations delegate that handles Kazakh fallback
class CustomMaterialLocalizationsDelegate extends LocalizationsDelegate<MaterialLocalizations> {
  const CustomMaterialLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    return ['en', 'ru', 'kz'].contains(locale.languageCode);
  }

  @override
  Future<MaterialLocalizations> load(Locale locale) async {
    // For Kazakh, fallback to Russian MaterialLocalizations
    if (locale.languageCode == 'kz') {
      return GlobalMaterialLocalizations.delegate.load(const Locale('ru'));
    }
    return GlobalMaterialLocalizations.delegate.load(locale);
  }

  @override
  bool shouldReload(CustomMaterialLocalizationsDelegate old) => false;
}

// Custom CupertinoLocalizations delegate that handles Kazakh fallback
class CustomCupertinoLocalizationsDelegate extends LocalizationsDelegate<CupertinoLocalizations> {
  const CustomCupertinoLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    return ['en', 'ru', 'kz'].contains(locale.languageCode);
  }

  @override
  Future<CupertinoLocalizations> load(Locale locale) async {
    // For Kazakh, fallback to Russian CupertinoLocalizations
    if (locale.languageCode == 'kz') {
      return GlobalCupertinoLocalizations.delegate.load(const Locale('ru'));
    }
    return GlobalCupertinoLocalizations.delegate.load(locale);
  }

  @override
  bool shouldReload(CustomCupertinoLocalizationsDelegate old) => false;
}

MaterialApp _buildApp(AppFlavor flavor, GoRouter router, String languageCode) {
  switch (flavor) {
    case AppFlavor.development:
      return development(router, languageCode);
    case AppFlavor.staging:
      return staging(router, languageCode);
    case AppFlavor.production:
      return production(router, languageCode);
  }
}

MaterialApp development(GoRouter router, String languageCode) => MaterialApp.router(
      title: AppFlavor.development.toString(),
      // Localization
      localizationsDelegates: const [
        S.delegate,
        CustomMaterialLocalizationsDelegate(),
        GlobalWidgetsLocalizations.delegate,
        CustomCupertinoLocalizationsDelegate(),
      ],
      supportedLocales: S.delegate.supportedLocales,
      locale: Locale(languageCode),

      // Router
      routerDelegate: router.routerDelegate,
      routeInformationParser: router.routeInformationParser,
      routeInformationProvider: router.routeInformationProvider,

      // Theme
      theme: AppTheme.appTheme,
      darkTheme: AppTheme.appThemeDark,
      themeMode: ThemeMode.dark,

      // Other
      debugShowCheckedModeBanner: true,

      builder: (context, child) {
        return NetworkAwareWidget(
          child: child ?? const SizedBox.shrink(),
        );
      },
    );

MaterialApp staging(GoRouter router, String languageCode) => MaterialApp.router(
      title: AppFlavor.staging.toString(),
      // Localization
      localizationsDelegates: const [
        S.delegate,
        CustomMaterialLocalizationsDelegate(),
        GlobalWidgetsLocalizations.delegate,
        CustomCupertinoLocalizationsDelegate(),
      ],
      supportedLocales: S.delegate.supportedLocales,
      locale: Locale(languageCode),

      // Router
      routerDelegate: router.routerDelegate,
      routeInformationParser: router.routeInformationParser,
      routeInformationProvider: router.routeInformationProvider,

      // Theme
      theme: AppTheme.appTheme,
      darkTheme: AppTheme.appThemeDark,
      themeMode: ThemeMode.dark,

      // Other
      debugShowCheckedModeBanner: false,

      // Add builder for network awareness
      builder: (context, child) {
        return NetworkAwareWidget(
          child: child ?? const SizedBox.shrink(),
        );
      },
    );

MaterialApp production(GoRouter router, String languageCode) => MaterialApp.router(
      title: AppFlavor.production.toString(),
      // Localization
      localizationsDelegates: const [
        S.delegate,
        CustomMaterialLocalizationsDelegate(),
        GlobalWidgetsLocalizations.delegate,
        CustomCupertinoLocalizationsDelegate(),
      ],

      supportedLocales: S.delegate.supportedLocales,
      locale: Locale(languageCode),

      // Router
      routerDelegate: router.routerDelegate,
      routeInformationParser: router.routeInformationParser,
      routeInformationProvider: router.routeInformationProvider,

      // Theme
      theme: AppTheme.appTheme,
      darkTheme: AppTheme.appThemeDark,
      themeMode: ThemeMode.dark,

      // Other
      debugShowCheckedModeBanner: false,

      builder: (context, child) {
        return NetworkAwareWidget(
          child: child ?? const SizedBox.shrink(),
        );
      },
    );
