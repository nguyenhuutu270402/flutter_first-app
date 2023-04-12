import 'package:flutter/material.dart';
import 'package:my_app/feature/welcome/widgets/language_button.dart';
import 'package:my_app/feature/welcome/widgets/privacy_and_terms.dart';
import 'package:my_app/common/widgets/custom_elevated_button.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      // backgroundColor: CusColors.backgroundDark,
      body: Column(
        children: [
          Container(
            width: screenWidth,
            height: screenHeight * 0.5,
            padding: const EdgeInsets.all(50),
            child: Image.asset(
              'assets/images/splash_dark.png',
            ),
          ),
          SizedBox(
            width: screenWidth,
            height: screenHeight * 0.5,
            child: Column(
              children: [
                const Text(
                  'Welcome to WhatsApp',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const PrivacyAndTerms(),
                CustomElevatedButtom(
                  onPressed: () {},
                  text: 'AGREE AND CONTINUTE',
                ),
                const SizedBox(height: 50),
                const LanguageButton()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
