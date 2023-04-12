import 'package:flutter/material.dart';
import 'package:my_app/common/extension/custom_theme_extension.dart';

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
        text: TextSpan(
          text: 'Read out ',
          style: TextStyle(
            color: context.theme.greyColor,
            height: 1.5,
          ),
          children: [
            TextSpan(
              text: 'Privacy Policy. ',
              style: TextStyle(
                color: context.theme.blueColor,
              ),
            ),
            TextSpan(
              text: 'Tab "Agree and continute" to accept the ',
              style: TextStyle(color: context.theme.greyColor),
            ),
            TextSpan(
              text: 'Temrms of service. ',
              style: TextStyle(color: context.theme.blueColor),
            ),
          ],
        ),
      ),
    );
  }
}
