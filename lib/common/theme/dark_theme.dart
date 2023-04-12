import 'package:flutter/material.dart';
import 'package:my_app/common/utils/coolors.dart';

ThemeData darkTheme() {
  final ThemeData base = ThemeData.dark();
  return base.copyWith(
    colorScheme: base.colorScheme.copyWith(
      background: CusColors.backgroundDark,
    ),
    scaffoldBackgroundColor: CusColors.backgroundDark,
  );
}
