import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 300,
        margin: const EdgeInsets.all(30),
        decoration: BoxDecoration(
          color: const Color.fromARGB(42, 0, 0, 0),
          border: Border.all(
            color: Colors.black,
            width: 1,
          ),
          borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
        ),
        child: InkWell(
          onTap: () {},
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: const Image(
                  image: NetworkImage(
                      'https://icdn.dantri.com.vn/thumb_w/680/2023/01/24/khoa-hocdocx-1674520013659.png'),
                  width: 200,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
              Text('shfv')
            ],
          ),
        ),
      ),
    );
  }
}
