// lenh nhanh stle
import 'package:flutter/material.dart';
import 'package:my_app/common/theme/dark_theme.dart';
import 'package:my_app/common/theme/light_theme.dart';
import 'package:my_app/feature/wellcome/pages/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static const a = true;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // Set status bar color to red

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp Me',

      theme: a == false ? lightTheme() : darkTheme(),
      // darkTheme: darkTheme(),
      themeMode: ThemeMode.system,
      home: const WelcomePage(),
    );
  }
}
