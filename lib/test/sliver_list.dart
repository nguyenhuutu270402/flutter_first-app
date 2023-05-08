import 'package:flutter/material.dart';

class SliverListPage extends StatefulWidget {
  const SliverListPage({super.key});

  @override
  State<SliverListPage> createState() => _SliverListPageState();
}

class _SliverListPageState extends State<SliverListPage> {
  bool _isAppBarVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.orange,
            elevation: 2,
            leading: Container(
              color: Colors.blue,
            ),
            floating: true,
            pinned: true,
            expandedHeight: 100,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("Basic"),
              centerTitle: true,
              background: Container(
                color: Colors.red,
                child: Text("kajsgfkv"),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              color: Colors.green,
              height: 1000,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              color: Colors.grey,
              height: 1000,
            ),
          ),
        ],
      ),
    );
  }
}
