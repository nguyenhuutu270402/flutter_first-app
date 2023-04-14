import 'package:flutter/material.dart';
import 'package:my_app/common/utils/app_images.dart';

class UngDungTab extends StatelessWidget {
  UngDungTab({super.key});
  final List<Map<String, String>> items = [
    {
      'title': 'Chấm công',
      'image': AssetPNG.iconChamCong,
    },
    {
      'title': 'Quản lý kho',
      'image': AssetPNG.iconQLKho,
    },
    {
      'title': 'Sản xuất',
      'image': AssetPNG.iconSanXuat,
    },
    {
      'title': 'Kiểm soát chất lượng',
      'image': AssetPNG.iconKiemSoat,
    },
  ];
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        color: Color(0xffE4EEFF),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 70),
              child: ListView.builder(
                itemCount: items.length,
                padding: EdgeInsets.symmetric(horizontal: 16),
                itemBuilder: (context, index) {
                  return Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.symmetric(vertical: 10),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 17, vertical: 13),
                          child: Image.asset(
                            items[index]['image']!,
                            width: 48,
                            height: 48,
                          ),
                        ),
                        Text(
                          items[index]['title']!,
                          style:
                              TextStyle(fontSize: 22, color: Color(0xff367BF6)),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Positioned(
              left: 0,
              child: Container(
                color: Color(0xffE4EEFF),
                height: 70,
                width: screenWidth,
                child: const Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: Text(
                      'Ứng dụng',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff367BF6)),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
