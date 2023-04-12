import 'package:flutter/material.dart';
import 'package:my_app/common/utils/coolors.dart';

ThemeData lightTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    colorScheme: base.colorScheme.copyWith(
      background: CusColors.backgroundLight,
    ),
    scaffoldBackgroundColor: CusColors.backgroundLight,
  );
}
