import 'package:flutter/material.dart';

class ForgetPassPage extends StatelessWidget {
  const ForgetPassPage({Key? key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Quên mật khẩu',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF367BF6),
                    ),
                  ),
                  SizedBox(height: 24),
                  Text(
                    'Nhập số điện thoại để cập nhật lại mật khẩu',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF367BF6),
                    ),
                  ),
                  SizedBox(height: 24),
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
                  SizedBox(height: 24),
                  ElevatedButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return MyModal();
                        },
                      );
                    },
                    child: Text('Gửi',
                        style: TextStyle(color: Colors.white, fontSize: 16)),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF367BF6),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        fixedSize: Size(screenWidth - 16, 48)),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 30,
            child: IconButton(
              splashColor: Colors.transparent,
              splashRadius: 22,
              icon: Icon(Icons.arrow_back, color: Color(0xFF367BF6)),
              onPressed: () {
                print('Button pressed');
              },
            ),
          ),
        ],
      ),
    );
  }
}

class MyModal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Stack(
        children: <Widget>[
          Container(
            color: Colors.black.withOpacity(0.5),
          ),
          Center(
            child: Positioned(
              child: Container(
                  width: MediaQuery.of(context).size.width - 16,
                  // height: 100,
                  color: Colors.white,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(height: 22),
                      Text(
                        'Thông báo',
                        style: TextStyle(
                            color: Colors.amber,
                            fontSize: 18,
                            decoration: TextDecoration.none),
                      ),
                      SizedBox(height: 22),
                      Text(
                        'Chúng tôi không tìm thấy tài khoản với số điện thoại này',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ],
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
