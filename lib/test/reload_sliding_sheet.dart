import 'package:flutter/material.dart';
import 'package:sliding_sheet/sliding_sheet.dart';
import 'package:my_app/test/sliding_sheet/sliding_sheet.dart';

class CustomBottomSheet extends StatefulWidget {
  const CustomBottomSheet({Key? key}) : super(key: key);

  @override
  _CustomBottomSheetState createState() => _CustomBottomSheetState();
}

class _CustomBottomSheetState extends State<CustomBottomSheet> {
  List<String> items = List.generate(10, (index) => "Item ${index + 1}");
  late SheetController sheetController = SheetController();

  void updateList(dynamic data) {
    // items = [];
    // items.addAll(
    //   List.generate(15, (index) => "Item ${items.length + index + 1}"),
    // );
    items.insert(0, "New Item");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bottom Sheet"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showMySlidingSheet(context, sheetController, updateList, items);
          },
          child: const Text("Open Bottom Sheet"),
        ),
      ),
    );
  }
}
