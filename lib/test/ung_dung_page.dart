import 'package:flutter/material.dart';
import 'package:my_app/common/utils/app_images.dart';
import 'package:my_app/test/tabs/nguoi_dung_tab.dart';
import 'package:my_app/test/tabs/ung_dung_tab.dart';

class UngDungPage extends StatelessWidget {
  const UngDungPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Container(
        child: Scaffold(
          body: Column(children: [
            Expanded(
              child: TabBarView(
                children: [
                  UngDungTab(),
                  NguoiDungTab(),
                ],
              ),
            ),
            Container(
              color: Color(0xffE4EEFF),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 70, vertical: 16),
                child: Container(
                  height: 45,
                  decoration: BoxDecoration(
                    color: Color(0xffE4EEFF),
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(
                      color: Color(0xff367BF6),
                      width: 2.0,
                    ),
                  ),
                  child: TabBar(
                    indicator: BoxDecoration(
                      color: Color(0xff367BF6),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.black,
                    tabs: [
                      Tab(
                        icon: Image.asset(
                          AssetPNG.iconUngDung,
                          height: 30,
                          width: 30,
                        ),
                      ),
                      Tab(
                        icon: Image.asset(
                          AssetPNG.iconPerson,
                          height: 30,
                          width: 30,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}






// bottom: 
