import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  Page2({super.key});
  final List<String> items = [
    "Item 1",
    "Item 2",
    "Item 3",
    "Item 4",
    "Item 5",
    "Item 6",
    "Item 7",
    "Item 8",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.symmetric(vertical: 10),
                  width: MediaQuery.of(context).size.width,
                  color: Colors.red,
                  constraints: BoxConstraints(minHeight: 100),
                  child: Column(
                    children: [
                      Text('IIIIII: ' + items[index]),
                      Text('index: $index'),
                      Stack(
                        children: [
                          Image(
                            image: NetworkImage(
                                'https://icdn.dantri.com.vn/thumb_w/680/2023/01/24/khoa-hocdocx-1674520013659.png'),
                            width: 200,
                            height: 200,
                            fit: BoxFit.cover,
                          ),
                          Positioned(
                            child: Container(
                              color: Colors.yellow,
                              // width: 100,
                              // height: 100,
                              child: Text('data'),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          Positioned(
            left: 0,
            child: Container(
              margin: EdgeInsets.all(20),
              color: Colors.blue,
              height: 20,
              width: 100,
            ),
          ),
          Positioned(
            right: 0,
            bottom: 0,
            child: Container(
              margin: const EdgeInsets.all(20),
              color: Colors.blue,
              height: 20,
              width: 100,
            ),
          ),
        ],
      ),
    );
  }
}
