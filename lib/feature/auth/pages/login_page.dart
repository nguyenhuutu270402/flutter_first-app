import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:my_app/common/extension/custom_theme_extension.dart';
import 'package:my_app/common/utils/coolors.dart';
import 'package:my_app/common/widgets/custom_elevated_button.dart';
import 'package:my_app/common/widgets/custom_icon_button.dart';
import 'package:my_app/feature/auth/widgets/custom_text_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late TextEditingController countryNameController;
  late TextEditingController countryCodeController;
  late TextEditingController phoneNumberController;
  showContryCodePicker() {
    showCountryPicker(
        context: context,
        showPhoneCode: true,
        favorite: ['ET'],
        countryListTheme: CountryListThemeData(
          bottomSheetHeight: 600,
          backgroundColor: context.theme.backgroundColorBottomSheet,
          flagSize: 22,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          textStyle: TextStyle(color: context.theme.greyColor),
          inputDecoration: InputDecoration(
              labelStyle: TextStyle(color: context.theme.greyColor),
              prefixIcon: const Icon(
                Icons.language,
                color: CusColors.greenDark,
              ),
              hintText: 'Search name or code country'),
        ),
        onSelect: (country) {
          countryNameController.text = country.name;
          countryCodeController.text = country.phoneCode;
        });
  }

  @override
  void initState() {
    countryNameController = TextEditingController(text: 'Ethiopia');
    countryCodeController = TextEditingController(text: '251');
    phoneNumberController = TextEditingController(text: '');
    super.initState();
  }

  @override
  void dispose() {
    countryNameController.dispose();
    countryCodeController.dispose();
    phoneNumberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final mycolors = Theme.of(context).extension<CustomThemeExtension>()!;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        title: Text(
          'Enter your phone number',
          style: TextStyle(color: mycolors.authAppbarTextColor),
        ),
        centerTitle: true,
        actions: [
          CustomIconButton(
            onTap: () {},
            icon: Icons.more_vert,
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                  text: 'WhatsApp need to verify your phone number. ',
                  style: TextStyle(
                    color: mycolors.greyColor,
                    height: 1.5,
                  ),
                  children: [
                    TextSpan(
                      text: "What's my number?",
                      style: TextStyle(
                        color: mycolors.blueColor,
                      ),
                    )
                  ]),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: CustomTextField(
              onTap: showContryCodePicker,
              controller: countryNameController,
              readOnly: true,
              suffixIcon: const Icon(
                Icons.arrow_drop_down,
                color: CusColors.greenDark,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Row(
              children: [
                SizedBox(
                  width: 70,
                  child: CustomTextField(
                    onTap: showContryCodePicker,
                    controller: countryCodeController,
                    prefixText: '+',
                    readOnly: true,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                    child: CustomTextField(
                  controller: phoneNumberController,
                  hintText: 'Phone number',
                  textAlign: TextAlign.left,
                  keyBoardType: TextInputType.number,
                ))
              ],
            ),
          ),
          const SizedBox(height: 20),
          Text(
            'Carrier charges may apply',
            style: TextStyle(
              color: context.theme.greyColor,
            ),
          )
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CustomElevatedButtom(
        onPressed: () {},
        text: 'NEXT',
        buttomWidth: 100,
      ),
    );
  }
}
