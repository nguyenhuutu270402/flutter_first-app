import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ReloadDialog extends StatefulWidget {
  const ReloadDialog({super.key});

  @override
  State<ReloadDialog> createState() => _ReloadDialogState();
}

class _ReloadDialogState extends State<ReloadDialog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Reload dialog"),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return const CustomListViewDialog();
                },
              );
            },
            child: const Text("Open Dialog"),
          ),
          ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return Container(
                    height: 300,
                    child: ListView.builder(
                      itemCount: 2,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text('Item $index'),
                        );
                      },
                    ),
                  );
                },
              );
            },
            child: const Text("Open Bottom Sheet"),
          ),
        ],
      ),
    );
  }
}

class CustomListViewDialog extends StatefulWidget {
  const CustomListViewDialog({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _CustomListViewDialogState();
}

class _CustomListViewDialogState extends State<CustomListViewDialog> {
  int itemCount = 20;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("List Dialog"),
      content: SizedBox(
        height: 300,
        width: 300,
        child: ListView.builder(
          itemCount: itemCount,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('Item $index'),
            );
          },
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            setState(() {
              itemCount += 5;
            });
          },
          child: const Text("Add"),
        ),
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text("Close"),
        ),
      ],
    );
  }
}
