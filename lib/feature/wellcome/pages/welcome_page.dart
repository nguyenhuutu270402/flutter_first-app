import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0XFF112B1),
      body: Column(
        children: [
          Container(
            width: screenWidth,
            height: screenHeight * 0.5,
            padding: const EdgeInsets.all(50),
            child: Image.asset(
              'assets/images/splash_dark.png',
              // color: Color(0xff00a884),
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
                Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 30,
                  ),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                      text: 'Read out ',
                      style: TextStyle(
                        color: Colors.grey,
                        height: 1.5,
                      ),
                      children: [
                        TextSpan(
                          text: 'Privacy Policy. ',
                          style: TextStyle(
                            color: Colors.cyan,
                          ),
                        ),
                        TextSpan(
                          text: 'Tab "Agree and continute" to accept the ',
                          style: TextStyle(color: Colors.grey),
                        ),
                        TextSpan(
                          text: 'Temp of service. ',
                          style: TextStyle(color: Colors.cyan),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: screenWidth - 100,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.green),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          // side: const BorderSide(color: Colors.red),
                        ),
                      ),
                    ),
                    child: const Text(
                      'AGREE AND CONTINUTE',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.grey),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          // side: const BorderSide(color: Colors.red),
                        ),
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Icon(
                          Icons.language,
                          color: Colors.green,
                        ),
                        Text(' Languaes '),
                        Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.green,
                        ),
                      ],
                    ))
                // Material(
                //   color: const Color(0XFF182229),
                //   borderRadius: BorderRadius.circular(16),
                //   child: InkWell(
                //     onTap: () {},
                //     borderRadius: BorderRadius.circular(100),
                //     child: Padding(
                //       padding: const EdgeInsets.all(8.0),
                //       child: Row(
                //         mainAxisSize: MainAxisSize.min,
                //         children: const [
                //           Icon(
                //             Icons.language,
                //             color: Colors.green,
                //           ),
                //           Text('Languaes'),
                //           Icon(
                //             Icons.keyboard_arrow_down,
                //             color: Colors.green,
                //           ),
                //         ],
                //       ),
                //     ),
                //   ),
                // )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
