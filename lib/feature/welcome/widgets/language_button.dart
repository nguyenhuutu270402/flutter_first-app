import 'package:flutter/material.dart';
import 'package:my_app/common/extension/custom_theme_extension.dart';
import 'package:my_app/common/extension/my_colors.dart';
import 'package:my_app/common/utils/coolors.dart';

class LanguageButton extends StatelessWidget {
  const LanguageButton({Key? key}) : super(key: key);

  void showBottomSheet(BuildContext context) {
    final mycolors = Theme.of(context).extension<CustomThemeExtension>()!;

    showModalBottomSheet(
      backgroundColor: mycolors.backgroundColorBottomSheet,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      context: context,
      builder: (BuildContext context) {
        return LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
          return Column(
            children: [
              Column(
                children: [
                  const SizedBox(height: 10),
                  Container(
                    height: 4,
                    width: 30,
                    decoration: BoxDecoration(
                      color: mycolors.greyColor!.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      const SizedBox(width: 20),
                      IconButton(
                        onPressed: () => Navigator.of(context).pop(),
                        splashColor: Colors.transparent,
                        splashRadius: 22,
                        iconSize: 22,
                        padding: EdgeInsets.zero,
                        constraints: const BoxConstraints(minWidth: 40),
                        icon: const Icon(
                          Icons.close_outlined,
                          color: CusColors.greyDark,
                        ),
                      ),
                      const SizedBox(width: 10),
                      const Text(
                        'Add language',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    color: mycolors.greyColor!.withOpacity(0.3),
                    thickness: 1,
                  ),
                ],
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: ConstrainedBox(
                    constraints:
                        BoxConstraints(minHeight: constraints.minHeight),
                    child: IntrinsicHeight(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Column(
                              children: [
                                RadioListTile(
                                  value: 'vi',
                                  groupValue: null,
                                  onChanged: (value) {},
                                  activeColor: CusColors.greenDark,
                                  title: const Text('Tiếng Việt'),
                                  subtitle: Text(
                                    'Vietnamese',
                                    style: TextStyle(color: mycolors.greyColor),
                                  ),
                                ),
                                RadioListTile(
                                  value: 'vi',
                                  groupValue: null,
                                  onChanged: (value) {},
                                  activeColor: CusColors.greenDark,
                                  title: const Text('Tiếng Việt'),
                                  subtitle: Text(
                                    'Vietnamese',
                                    style: TextStyle(color: mycolors.greyColor),
                                  ),
                                ),
                                RadioListTile(
                                  value: 'vi',
                                  groupValue: null,
                                  onChanged: (value) {},
                                  activeColor: CusColors.greenDark,
                                  title: const Text('Tiếng Việt'),
                                  subtitle: Text(
                                    'Vietnamese',
                                    style: TextStyle(color: mycolors.greyColor),
                                  ),
                                ),
                                RadioListTile(
                                  value: 'vi',
                                  groupValue: null,
                                  onChanged: (value) {},
                                  activeColor: CusColors.greenDark,
                                  title: const Text('Tiếng Việt'),
                                  subtitle: Text(
                                    'Vietnamese',
                                    style: TextStyle(color: mycolors.greyColor),
                                  ),
                                ),
                                RadioListTile(
                                  value: 'vi',
                                  groupValue: null,
                                  onChanged: (value) {},
                                  activeColor: CusColors.greenDark,
                                  title: const Text('Tiếng Việt'),
                                  subtitle: Text(
                                    'Vietnamese',
                                    style: TextStyle(color: mycolors.greyColor),
                                  ),
                                ),
                                RadioListTile(
                                  value: 'vi',
                                  groupValue: null,
                                  onChanged: (value) {},
                                  activeColor: CusColors.greenDark,
                                  title: const Text('Tiếng Việt'),
                                  subtitle: Text(
                                    'Vietnamese',
                                    style: TextStyle(color: mycolors.greyColor),
                                  ),
                                ),
                                RadioListTile(
                                  value: 'vi',
                                  groupValue: null,
                                  onChanged: (value) {},
                                  activeColor: CusColors.greenDark,
                                  title: const Text('Tiếng Việt'),
                                  subtitle: Text(
                                    'Vietnamese',
                                    style: TextStyle(color: mycolors.greyColor),
                                  ),
                                ),
                                RadioListTile(
                                  value: 'vi',
                                  groupValue: null,
                                  onChanged: (value) {},
                                  activeColor: CusColors.greenDark,
                                  title: const Text('Tiếng Việt'),
                                  subtitle: Text(
                                    'Vietnamese',
                                    style: TextStyle(color: mycolors.greyColor),
                                  ),
                                ),
                                RadioListTile(
                                  value: 'vi',
                                  groupValue: null,
                                  onChanged: (value) {},
                                  activeColor: CusColors.greenDark,
                                  title: const Text('Tiếng Việt'),
                                  subtitle: Text(
                                    'Vietnamese',
                                    style: TextStyle(color: mycolors.greyColor),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          );
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final mycolors = Theme.of(context).extension<CustomThemeExtension>()!;
    return Material(
      color: mycolors.langBtnBgColor,
      borderRadius: BorderRadius.circular(20),
      child: InkWell(
        onTap: () => showBottomSheet(context),
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
                  'Languages',
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
