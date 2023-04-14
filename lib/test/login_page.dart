import 'package:flutter/material.dart';
import 'package:my_app/common/extension/custom_theme_extension.dart';
import 'package:my_app/common/extension/my_colors.dart';
import 'package:my_app/common/utils/app_images.dart';

class LoginPage1 extends StatelessWidget {
  const LoginPage1({Key? key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // SizedBox(height: 10),
            Center(
              child: Container(
                width: screenWidth * 0.5,
                height: screenHeight * 0.5,
                child: Image.asset(
                  AssetPNG.logoAlpha,
                ),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 16),
              child: Text(
                'Đăng nhập',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
                // textAlign: TextAlign.left,
              ),
            ),
            SizedBox(height: 37),
            Container(
              width: screenWidth - 16,
              height: 48,
              child: TextField(
                maxLines: 1,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 10),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Color(0xFF367BF6)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF367BF6)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: 'Số điện thoại',
                  labelText: 'Số điện thoại',
                ),
                style: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(height: 18),
            Container(
              width: screenWidth - 16,
              height: 48,
              child: TextField(
                obscureText: true,
                textAlignVertical: TextAlignVertical.center,
                maxLines: 1,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 10),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Color(0xFF367BF6)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF367BF6)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: 'Mật khẩu',
                  labelText: 'Mật khẩu',
                  suffixIcon: IconButton(
                    // icon: Icon(Icons.visibility_off_outlined),
                    icon: Icon(Icons.visibility_outlined),
                    onPressed: () {},
                  ),
                ),
                style: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(height: 70),
            ElevatedButton(
              onPressed: () {
                // Xử lý sự kiện khi nhấn nút
              },
              child: Text('Đăng nhập',
                  style: TextStyle(color: Colors.white, fontSize: 16)),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF367BF6),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  fixedSize: Size(screenWidth - 16, 48)),
            ),
            SizedBox(height: 10),
            Text(
              'Quên mật khẩu?',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF367BF6)),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
