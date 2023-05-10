import 'package:flutter/material.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

void showMySlidingSheet(BuildContext context, SheetController sheetController,
    Function(dynamic) updateList, List items) {
  showSlidingBottomSheet(
    context,
    builder: (context) {
      return SlidingSheetDialog(
        listener: (state) {
          print(state.isAtTop);
          // if (state.isAtTop != true) {}
          print(">>>> : ${sheetController}");

          // SheetController.of(context)!.rebuild();
        },
        controller: sheetController,
        cornerRadius: 8,
        snapSpec: SnapSpec(
          snappings: [0.5, 0.9],
        ),
        builder: (context, state) => _buildBottomSheetContent(items),
        footerBuilder: (context, state) =>
            _buildFooterSheetContent(sheetController, updateList),
      );
    },
  );
}

Widget _buildFooterSheetContent(
    SheetController sheetController, Function(dynamic) updateList) {
  return Material(
    child: Container(
      color: Colors.amber,
      child: ElevatedButton(
        onPressed: () {
          // setState(() {
          //   // Add 5 more items to the list

          // });
          // items.addAll(
          //   List.generate(5, (index) => "Item ${items.length + index + 1}"),
          // );
          updateList([]);
          sheetController.rebuild();

          // SheetController.of(context)!.rebuild();
        },
        child: Text("Adddddd"),
      ),
    ),
  );
}

Widget _buildBottomSheetContent(List items) {
  return Material(
    child: Container(
      color: Colors.white,
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(items[index]),
            trailing: IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                // SheetController.of(context)!.rebuild();
                // sheetController.rebuild();
                // print(">>>> : ${sheetController}");
              },
            ),
          );
        },
      ),
    ),
  );
}
