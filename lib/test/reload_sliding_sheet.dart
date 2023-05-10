import 'package:flutter/material.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

class CustomBottomSheet extends StatefulWidget {
  const CustomBottomSheet({Key? key}) : super(key: key);

  @override
  _CustomBottomSheetState createState() => _CustomBottomSheetState();
}

class _CustomBottomSheetState extends State<CustomBottomSheet> {
  List<String> items = List.generate(10, (index) => "Item ${index + 1}");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bottom Sheet"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _showMySlidingSheet(context);
          },
          child: const Text("Open Bottom Sheet"),
        ),
      ),
    );
  }

  void _showMySlidingSheet(BuildContext context) {
    showSlidingBottomSheet(
      context,
      builder: (context) {
        return SlidingSheetDialog(
          cornerRadius: 8,
          snapSpec: SnapSpec(
            snappings: [0.5, 0.9],
          ),
          builder: (context, state) => _buildBottomSheetContent(),
          footerBuilder: (context, state) => _buildFooterSheetContent(),
        );
      },
    );
  }

  Widget _buildFooterSheetContent() {
    return Material(
      child: Container(
        color: Colors.amber,
        child: ElevatedButton(
          onPressed: () {
            setState(() {
              // Add 5 more items to the list
              items.addAll(
                List.generate(5, (index) => "Item ${items.length + index + 1}"),
              );
            });
            // SheetController.of(context)!.rebuild();
          },
          child: Text("Adddddd"),
        ),
      ),
    );
  }

  Widget _buildBottomSheetContent() {
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
                  setState(() {
                    // Add 5 more items to the list
                    items.addAll(
                      List.generate(
                          5, (index) => "Item ${items.length + index + 1}"),
                    );
                  });
                  SheetController.of(context)!.rebuild();
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
