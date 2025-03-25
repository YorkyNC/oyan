import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oyan/src/core/theme/colors.dart';
import 'package:oyan/src/core/theme/typography.dart';
import 'package:oyan/src/core/utils/constants/app_icons.dart';

part 'color_schemes.dart';
part 'text_theme.dart';
part 'theme_provider.dart';

class AppTheme {
  static const AppColors colors = AppColors();
  static const FigmaTextStyles typography = FigmaTextStyles();
  static final AppIcons icons = AppIcons();

  static final appTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: textTheme,
    bottomSheetTheme: const BottomSheetThemeData(constraints: BoxConstraints.expand()),
    iconTheme: IconThemeData(color: colors.black),
    filledButtonTheme: FilledButtonThemeData(
      style: ButtonStyle(
        foregroundColor: const WidgetStatePropertyAll(Colors.white),
        backgroundColor: WidgetStatePropertyAll(colors.main),
        // padding: const WidgetStatePropertyAll(EdgeInsets.symmetric(vertical: 16)),
        shape: const WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5)))),
        textStyle: WidgetStatePropertyAll(
          GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(
        elevation: const WidgetStatePropertyAll(1),
        backgroundColor: WidgetStatePropertyAll(colors.white),
        shadowColor: const WidgetStatePropertyAll(Color(0x0D0A0D12)),
        textStyle: WidgetStatePropertyAll(
          typography.textsmSemibold.copyWith(
            height: 1, //TODO height does not work properly with icon
          ),
        ),
        foregroundColor: WidgetStatePropertyAll(colors.gray700),
        padding: const WidgetStatePropertyAll(EdgeInsets.fromLTRB(14, 0, 14, 0)),
        overlayColor: WidgetStatePropertyAll(colors.gray50),
        iconColor: WidgetStatePropertyAll(colors.black),
        iconSize: const WidgetStatePropertyAll(20),
        shape: const WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8)))),
        side: const WidgetStatePropertyAll(BorderSide(color: Color(0xFFD5D7DA))),
      ),
    ),
    progressIndicatorTheme: ProgressIndicatorThemeData(color: colors.white),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(colors.brand400),
        shape: const WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8)))),
        textStyle: WidgetStatePropertyAll(typography.textsmSemibold),
        foregroundColor: WidgetStatePropertyAll(colors.white),
      ),
    ),
    dividerTheme: DividerThemeData(space: 0, color: colors.gray100),
    checkboxTheme: CheckboxThemeData(
      checkColor: WidgetStatePropertyAll(colors.brand25),
      fillColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return colors.blueGray400;
        }
        return Colors.transparent;
      }),
    ),
  );

  static final appThemeDark = appTheme.copyWith(brightness: Brightness.dark, textTheme: textTheme);

  static final appThemeLight = appTheme.copyWith(brightness: Brightness.dark, textTheme: textTheme);
}

class MaterialAppTheme {
  static final materialTheme = ThemeData(
    colorSchemeSeed: Colors.amber,
    useMaterial3: true,
    brightness: Brightness.dark,
    textTheme: textTheme,
  );

  static final materialLight = materialTheme.copyWith(brightness: Brightness.light, textTheme: textTheme);

  static final materialDark = materialTheme.copyWith(brightness: Brightness.dark, textTheme: textTheme);
}
