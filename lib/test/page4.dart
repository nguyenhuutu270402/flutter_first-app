import 'package:flutter/material.dart';

class Page4 extends StatelessWidget {
  Page4({super.key});
  final List<Map<String, String>> items = [
    {
      'name': 'John',
      'avatar':
          'https://media.vov.vn/sites/default/files/styles/large/public/2023-01/m9.jpg'
    },
    {
      'name': 'Alice',
      'avatar':
          'https://images2.thanhnien.vn/zoom/700_438/Uploaded/congson/2022_06_07/anh-1-o-chau-au-tu-the-ky-13-meo-den-duoc-xem-la-hien-than-cua-quy-satan-anh-marthastewart-com-7664.jpg'
    },
    {
      'name': 'Bob',
      'avatar':
          'https://toplist.vn/images/800px/meo-cung-lovely-cattery-998697.jpg'
    },
    {
      'name': 'Charlie',
      'avatar':
          'https://bizweb.dktcdn.net/100/303/962/files/87126502-2509242206005371-2073523065622364160-n-f697e400-e8b2-4bb1-9698-d00b50b2d9c3.jpg?v=1627804121650'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
        itemCount: items.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10.0,
          crossAxisSpacing: 10.0,
          childAspectRatio: 1,
        ),
        itemBuilder: (BuildContext context, int index) {
          return Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              border: Border.all(),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    Image(
                      image: NetworkImage(items[index]['avatar']!),
                      height: 100,
                      width: 100,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(height: 10),
                    Positioned(
                      bottom: 0,
                      child: Text(
                        items[index]['name']!,
                        style: TextStyle(fontSize: 16),
                      ),
                    )
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
