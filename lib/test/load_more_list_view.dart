import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoadMoreListView extends StatefulWidget {
  const LoadMoreListView({super.key});

  @override
  State<LoadMoreListView> createState() => _LoadMoreListViewState();
}

class _LoadMoreListViewState extends State<LoadMoreListView> {
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
      appBar: AppBar(
        title: Text("Load More"),
      ),
      body: ValueListenableBuilder(
        valueListenable: myList,
        builder: (context, value, child) {
          return ListView.builder(
              controller: _scrollController,
              itemCount: myList.value.length + 1,
              itemExtent: 80,
              itemBuilder: (context, index) {
                if (index == myList.value.length && index < apiList.length) {
                  return CupertinoActivityIndicator();
                }
                if (index < apiList.length) {
                  return Text("${myList.value[index]}");
                } else {
                  return Text("Hết rồi!!!!");
                }
              });
        },
      ),
    );
  }
}
