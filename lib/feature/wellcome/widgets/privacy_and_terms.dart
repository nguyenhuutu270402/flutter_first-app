import 'package:flutter/material.dart';

import '../../../common/utils/coolors.dart';

class PrivacyAndTerms extends StatelessWidget {
  const PrivacyAndTerms({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 20,
      ),
      child: RichText(
        textAlign: TextAlign.center,
        text: const TextSpan(
          text: 'Read out ',
          style: TextStyle(
            color: CusColors.greyDark,
            height: 1.5,
          ),
          children: [
            TextSpan(
              text: 'Privacy Policy. ',
              style: TextStyle(
                color: CusColors.blueDark,
              ),
            ),
            TextSpan(
              text: 'Tab "Agree and continute" to accept the ',
              style: TextStyle(color: CusColors.greyDark),
            ),
            TextSpan(
              text: 'Temrms of service. ',
              style: TextStyle(color: CusColors.blueDark),
            ),
          ],
        ),
      ),
    );
  }
}
