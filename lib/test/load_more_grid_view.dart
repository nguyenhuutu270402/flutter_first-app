import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class LoadMoreGridView extends StatefulWidget {
  const LoadMoreGridView({super.key});

  @override
  State<LoadMoreGridView> createState() => _LoadMoreGridViewState();
}

class _LoadMoreGridViewState extends State<LoadMoreGridView> {
  bool isShowAppBar = true;
  List apiList = List.generate(78, (index) => "Item: ${index + 1}");
  ScrollController _scrollController = ScrollController();
  int _currentMax = 10;
  ValueNotifier<List> myList = ValueNotifier([]);
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    myList.value = List.generate(10, (index) => "Item: ${index + 1}");
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        _getMoreData();
      }
    });
  }

  void _getMoreData() {
    for (int i = _currentMax; i < _currentMax + 10; i++) {
      if (i < apiList.length) {
        myList.value.add("Item:a ${i + 1}");
      }
    }
    _currentMax = _currentMax + 10;
    if (_currentMax > apiList.length) {
      _currentMax = apiList.length;
    }
    myList.notifyListeners();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: isShowAppBar
          ? AppBar(
              backgroundColor: Colors.grey,
              title: TextField(
                decoration: InputDecoration(
                  labelText: 'Enter your name',
                  border: OutlineInputBorder(),
                ),
              ),
              centerTitle: true,
              leading: Container(
                color: Colors.red,
                child: Text("Back"),
              ),
              actions: [
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    // Xử lý khi người dùng nhấn vào nút tìm kiếm
                  },
                ),
              ],
              toolbarHeight: 100,
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(50),
                child: Container(
                  color: Colors.green,
                  height: 50.0,
                ),
              ),
            )
          : null,
      body: ValueListenableBuilder(
        valueListenable: myList,
        builder: (context, value, child) {
          return GridView.builder(
            itemCount: myList.value.length + 1,
            controller: _scrollController,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 0.6,
            ),
            itemBuilder: (context, index) {
              if (index == myList.value.length && index < apiList.length) {
                return Container(
                    color: Colors.red, child: CupertinoActivityIndicator());
              }
              if (index < apiList.length) {
                return Container(
                    color: Colors.amber, child: Text("${myList.value[index]}"));
              } else {
                return Text("Hết rồi!!!!");
              }
            },
          );
        },
      ),
    );
  }
}
