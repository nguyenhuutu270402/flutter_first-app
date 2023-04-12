import 'package:flutter/material.dart';
import 'package:my_app/common/extension/custom_theme_extension.dart';
import 'package:my_app/common/utils/coolors.dart';

ThemeData darkTheme() {
  final ThemeData base = ThemeData.dark();
  return base.copyWith(
    colorScheme: base.colorScheme.copyWith(
      background: CusColors.backgroundDark,
    ),
    scaffoldBackgroundColor: CusColors.backgroundDark,
    extensions: [
      CustomThemeExtension.darkMode,
    ],
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: CusColors.greenDark,
        foregroundColor: CusColors.backgroundDark,
        elevation: 0,
        shadowColor: Colors.transparent,
      ),
    ),
  );
}
