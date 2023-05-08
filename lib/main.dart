// lenh nhanh stle, stfu
import 'package:flutter/material.dart';
import 'package:my_app/common/theme/dark_theme.dart';
import 'package:my_app/common/theme/light_theme.dart';
import 'package:my_app/feature/auth/pages/login_page.dart';
import 'package:my_app/feature/welcome/pages/welcome_page.dart';
import 'package:my_app/test/chuyenmanhinh.dart';
import 'package:my_app/test/forget_pass_page.dart';
import 'package:my_app/test/load_more_list_view.dart';
import 'package:my_app/test/login_page.dart';
import 'package:my_app/test/page1.dart';
import 'package:my_app/test/page2.dart';
import 'package:my_app/test/page3.dart';
import 'package:my_app/test/page4.dart';
import 'package:my_app/test/ung_dung_page.dart';
import 'package:my_app/test/video_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // static const isDarkTheme = true;
  static const isDarkTheme = false;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // Set status bar color to red

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp Me',
      theme: isDarkTheme == false ? lightTheme() : darkTheme(),
      // darkTheme: a == false ? lightTheme() : darkTheme(),
      themeMode: ThemeMode.system,
      home: LoadMoreListView(),
    );
  }
}
