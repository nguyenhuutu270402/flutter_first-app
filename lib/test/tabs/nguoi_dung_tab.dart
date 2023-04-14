import 'package:flutter/material.dart';

class NguoiDungTab extends StatelessWidget {
  const NguoiDungTab({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        constraints: BoxConstraints(minHeight: screenHeight),
        color: Color(0xffE4EEFF),
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: Text(
                        'Người dùng',
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff367BF6)),
                      ),
                    ),
                  ),
                  SizedBox(height: 50),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.network(
                      'https://bizweb.dktcdn.net/100/303/962/files/87126502-2509242206005371-2073523065622364160-n-f697e400-e8b2-4bb1-9698-d00b50b2d9c3.jpg?v=1627804121650',
                      width: screenWidth * 0.35,
                      height: screenWidth * 0.35,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      'Tony Stack',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff367BF6)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      '0985331256',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff949494)),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              child: SizedBox(
                width: screenWidth,
                child: Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // Xử lý sự kiện khi nhấn nút
                      },
                      child: Text('Chỉnh sửa thông tin',
                          style: TextStyle(color: Colors.white, fontSize: 16)),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF367BF6),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        fixedSize: Size(screenWidth - 30, 48),
                      ),
                    ),
                    SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {
                        // Xử lý sự kiện khi nhấn nút
                      },
                      child: Text('Đăng xuất',
                          style: TextStyle(color: Colors.white, fontSize: 16)),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFF4A62F),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        fixedSize: Size(screenWidth - 30, 48),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
