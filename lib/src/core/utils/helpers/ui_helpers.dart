import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class UIHelpers {
  static void statusBarTheme({bool? isDarkMode}) {
    final effectiveDarkMode = isDarkMode ?? WidgetsBinding.instance.window.platformBrightness == Brightness.dark;

    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: effectiveDarkMode ? Brightness.light : Brightness.dark,
        statusBarBrightness: effectiveDarkMode ? Brightness.dark : Brightness.light,
      ),
    );
  }
}
