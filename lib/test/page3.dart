import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Page3 extends StatelessWidget {
  Page3({super.key});
  final numbers = [1, 2, 3, 4, 5];
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8.0, // Khoảng cách giữa các phần tử
      children: [
        ...numbers.map((number) => Text(
              'Number số $number',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.red,
                decoration: TextDecoration.none,
              ),
            )),
        ElevatedButton(
            onPressed: () {},
            child: Text(
              'Button',
            )),
      ],
    );
  }
}
