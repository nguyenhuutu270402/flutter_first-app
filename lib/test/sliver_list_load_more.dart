import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SliverListLoadMore extends StatefulWidget {
  const SliverListLoadMore({Key? key}) : super(key: key);

  @override
  _SliverListLoadMoreState createState() => _SliverListLoadMoreState();
}

class _SliverListLoadMoreState extends State<SliverListLoadMore> {
  final ScrollController _scrollController = ScrollController();
  ValueNotifier<List<String>> items = ValueNotifier([]);

  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _fisrtData();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _fisrtData() {
    final List<String> newItems =
        List.generate(10, (index) => 'Item ${items.value.length + index}');

    items.value.addAll(newItems);
  }

  void _onScroll() {
    if (_scrollController.position.pixels ==
        _scrollController.position.maxScrollExtent) {
      _loadMoreItems();
    }
  }

  void _loadMoreItems() {
    // Thêm dữ liệu mới vào danh sách
    final List<String> newItems =
        List.generate(5, (index) => 'Item ${items.value.length + index}');
    items.value.addAll(newItems);
    items.notifyListeners();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          SliverAppBar(
            title: Text('SliverList Load More'),
            floating: true,
            snap: true,
          ),
          ValueListenableBuilder(
            valueListenable: items,
            builder: (context, value, child) {
              return SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    if (index < items.value.length) {
                      return ListTile(
                        title: Text(items.value[index]),
                      );
                    } else {
                      return _buildLoader();
                    }
                  },
                  childCount: items.value.length + 1,
                ),
              );
            },
          )
        ],
      ),
    );
  }

  Widget _buildLoader() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 32),
      alignment: Alignment.center,
      child: CircularProgressIndicator(),
    );
  }
}
