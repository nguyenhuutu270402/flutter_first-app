import 'package:flutter/material.dart';
import 'package:my_app/common/utils/coolors.dart';

extension ExtendedTheme on BuildContext {
  CustomThemeExtension get theme {
    return Theme.of(this).extension<CustomThemeExtension>()!;
  }
}

class CustomThemeExtension extends ThemeExtension<CustomThemeExtension> {
  static const lightMode = CustomThemeExtension(
    circleImageColor: Color(0XFF25D366),
    greyColor: CusColors.greyLight,
    blueColor: CusColors.blueLight,
    langBtnBgColor: Color(0XFFF7F8FA),
    langBtnHighLightBgColor: Color(0XFFE8E8ED),
    greyBackground: Color(0XFF202C33),
    authAppbarTextColor: Color(0XFF008069),
    backgroundColorBottomSheet: Colors.white,
  );
  static const darkMode = CustomThemeExtension(
    circleImageColor: CusColors.greenDark,
    greyColor: CusColors.greyDark,
    blueColor: CusColors.blueDark,
    langBtnBgColor: Color(0XFF182229),
    langBtnHighLightBgColor: Color(0XFF09141A),
    greyBackground: Color.fromARGB(255, 71, 93, 105),
    authAppbarTextColor: Colors.white,
    backgroundColorBottomSheet: Color(0XFF202C33),
  );
  final Color? circleImageColor;
  final Color? greyColor;
  final Color? blueColor;
  final Color? langBtnBgColor;
  final Color? langBtnHighLightBgColor;
  final Color? greyBackground;
  final Color? authAppbarTextColor;
  final Color? backgroundColorBottomSheet;

  const CustomThemeExtension({
    this.circleImageColor,
    this.greyColor,
    this.blueColor,
    this.langBtnBgColor,
    this.langBtnHighLightBgColor,
    this.greyBackground,
    this.authAppbarTextColor,
    this.backgroundColorBottomSheet,
  });

  @override
  ThemeExtension<CustomThemeExtension> copyWith({
    Color? circleImageColor,
    Color? greyColor,
    Color? blueColor,
    Color? langBtnBgColor,
    Color? langBtnHighLightBgColor,
    Color? greyBackground,
    Color? authAppbarTextColor,
    Color? backgroundColorBottomSheet,
  }) {
    return CustomThemeExtension(
      circleImageColor: circleImageColor ?? this.circleImageColor,
      greyColor: greyColor ?? this.greyColor,
      blueColor: blueColor ?? this.blueColor,
      langBtnBgColor: langBtnBgColor ?? this.langBtnBgColor,
      langBtnHighLightBgColor:
          langBtnHighLightBgColor ?? this.langBtnHighLightBgColor,
      greyBackground: greyBackground ?? this.greyBackground,
      authAppbarTextColor: authAppbarTextColor ?? this.authAppbarTextColor,
      backgroundColorBottomSheet:
          backgroundColorBottomSheet ?? this.backgroundColorBottomSheet,
    );
  }

  @override
  ThemeExtension<CustomThemeExtension> lerp(
      covariant ThemeExtension<CustomThemeExtension>? other, double t) {
    if (other is! CustomThemeExtension) return this;
    return CustomThemeExtension(
      circleImageColor: Color.lerp(circleImageColor, other.circleImageColor, t),
      greyColor: Color.lerp(greyColor, other.greyColor, t),
      blueColor: Color.lerp(blueColor, other.blueColor, t),
      langBtnBgColor: Color.lerp(langBtnBgColor, other.langBtnBgColor, t),
      langBtnHighLightBgColor:
          Color.lerp(langBtnHighLightBgColor, other.langBtnHighLightBgColor, t),
      greyBackground: Color.lerp(greyBackground, other.greyBackground, t),
      authAppbarTextColor:
          Color.lerp(authAppbarTextColor, other.authAppbarTextColor, t),
      backgroundColorBottomSheet: Color.lerp(
          backgroundColorBottomSheet, other.backgroundColorBottomSheet, t),
    );
  }
}
