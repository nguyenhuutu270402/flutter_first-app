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
                      _showModal(context);
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

  void _showModal(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
            color: Colors.white,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 4,
                width: 40,
                margin: EdgeInsets.only(top: 16),
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              SizedBox(height: 24),
              Text(
                'Xác nhận xóa tài khoản',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 24),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  'Bạn có chắc chắn muốn xóa tài khoản? Hành động này sẽ xóa toàn bộ thông tin tài khoản của bạn và không thể khôi phục được.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey[600],
                  ),
                ),
              ),
              SizedBox(height: 24),
              Row(
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        // xử lý sự kiện khi nhấn Hủy
                      },
                      child: Text(
                        'Hủy',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey[600],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 48,
                    width: 1,
                    color: Colors.grey[300],
                  ),
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        // xử lý sự kiện khi nhấn Xóa
                      },
                      child: Text(
                        'Xóa',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
