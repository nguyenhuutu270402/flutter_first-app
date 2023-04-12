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
  );
  static const darkMode = CustomThemeExtension(
    circleImageColor: CusColors.greenDark,
    greyColor: CusColors.greyDark,
    blueColor: CusColors.blueDark,
    langBtnBgColor: Color(0XFF182229),
    langBtnHighLightBgColor: Color(0XFF09141A),
  );
  final Color? circleImageColor;
  final Color? greyColor;
  final Color? blueColor;
  final Color? langBtnBgColor;
  final Color? langBtnHighLightBgColor;

  const CustomThemeExtension({
    this.circleImageColor,
    this.greyColor,
    this.blueColor,
    this.langBtnBgColor,
    this.langBtnHighLightBgColor,
  });

  @override
  ThemeExtension<CustomThemeExtension> copyWith({
    Color? circleImageColor,
    Color? greyColor,
    Color? blueColor,
    Color? langBtnBgColor,
    Color? langBtnHighLightBgColor,
  }) {
    return CustomThemeExtension(
      circleImageColor: circleImageColor ?? this.circleImageColor,
      greyColor: greyColor ?? this.greyColor,
      blueColor: blueColor ?? this.blueColor,
      langBtnBgColor: langBtnBgColor ?? this.langBtnBgColor,
      langBtnHighLightBgColor:
          langBtnHighLightBgColor ?? this.langBtnHighLightBgColor,
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
    );
  }
}