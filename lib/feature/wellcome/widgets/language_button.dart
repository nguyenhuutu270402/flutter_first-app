import 'package:flutter/material.dart';
import 'package:my_app/common/utils/coolors.dart';

class LanguageButton extends StatelessWidget {
  const LanguageButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color.fromARGB(255, 56, 56, 56),
      borderRadius: BorderRadius.circular(20),
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(100),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Icon(
                Icons.language,
                color: CusColors.greenDark,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  'Languaes',
                  style: TextStyle(color: CusColors.greenDark),
                ),
              ),
              Icon(
                Icons.keyboard_arrow_down,
                color: CusColors.greenDark,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
