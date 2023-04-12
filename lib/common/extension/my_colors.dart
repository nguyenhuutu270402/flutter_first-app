import 'package:flutter/material.dart';

@immutable
class MyColors extends ThemeExtension<MyColors> {
  final Color? myColor1;
  final Color? myColor2;

  const MyColors({
    this.myColor1,
    this.myColor2,
  });

  @override
  ThemeExtension<MyColors> copyWith({Color? myColor1, Color? myColor2}) {
    return MyColors(
      myColor1: myColor1 ?? this.myColor1,
      myColor2: myColor1 ?? this.myColor2,
    );
  }

  @override
  ThemeExtension<MyColors> lerp(
      covariant ThemeExtension<MyColors>? other, double t) {
    if (other is! MyColors) {
      return this;
    }
    return MyColors(
      myColor1: Color.lerp(myColor1, other.myColor1, t),
      myColor2: Color.lerp(myColor2, other.myColor2, t),
    );
  }

  static const light = MyColors(
    myColor1: Colors.red,
    myColor2: Colors.yellow,
  );
  static const dark = MyColors(
    myColor1: Colors.blue,
    myColor2: Colors.green,
  );
}
