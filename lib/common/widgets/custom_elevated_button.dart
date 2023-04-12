import 'package:flutter/material.dart';
import 'package:my_app/common/utils/coolors.dart';

class CustomElevatedButtom extends StatelessWidget {
  const CustomElevatedButtom({
    super.key,
    this.buttomWidth,
    required this.onPressed,
    required this.text,
  });
  final double? buttomWidth;
  final VoidCallback onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: buttomWidth ?? MediaQuery.of(context).size.width - 100,
      height: 42,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
          backgroundColor:
              MaterialStateProperty.all<Color>(CusColors.greenDark),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        child: Text(
          text,
          style: const TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
