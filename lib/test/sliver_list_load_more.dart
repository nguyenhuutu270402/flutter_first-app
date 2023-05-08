import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SliverListLoadMore extends StatefulWidget {
  const SliverListLoadMore({Key? key}) : super(key: key);

  @override
  _SliverListLoadMoreState createState() => _SliverListLoadMoreState();
}

class _SliverListLoadMoreState extends State<SliverListLoadMore> {
  final List<String> items = List.generate(20, (index) => 'Item ${index + 1}');
  final ScrollController _scrollController = ScrollController();

  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_scrollController.position.pixels ==
        _scrollController.position.maxScrollExtent) {
      _loadMoreItems();
    }
  }

  void _loadMoreItems() {
    if (!_isLoading) {
      setState(() {
        _isLoading = true;
      });

      // Thêm dữ liệu mới vào danh sách
      final List<String> newItems =
          List.generate(5, (index) => 'Item ${items.length + index + 1}');
      Future.delayed(Duration(seconds: 2), () {
        setState(() {
          items.addAll(newItems);
          _isLoading = false;
        });
      });
    }
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
          SliverToBoxAdapter(
            child: Container(
              color: Colors.green,
              height: 1000,
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                if (index < items.length) {
                  return ListTile(
                    title: Text(items[index]),
                  );
                } else {
                  return _buildLoader();
                }
              },
              childCount: items.length + 1,
            ),
          ),
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
