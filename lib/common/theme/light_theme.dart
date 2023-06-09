import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_app/common/extension/custom_theme_extension.dart';
import 'package:my_app/common/extension/my_colors.dart';
import 'package:my_app/common/utils/coolors.dart';

ThemeData lightTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    colorScheme: base.colorScheme.copyWith(
      background: CusColors.backgroundLight,
    ),
    scaffoldBackgroundColor: CusColors.backgroundLight,
    extensions: const <ThemeExtension<dynamic>>[
      MyColors.light,
      CustomThemeExtension.lightMode,
    ],
    appBarTheme: const AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: CusColors.greenLight,
        foregroundColor: CusColors.backgroundLight,
        elevation: 0,
        shadowColor: Colors.transparent,
      ),
    ),
  );
}
