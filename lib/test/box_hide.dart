import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ScrollControllerDemo extends StatefulWidget {
  @override
  _ScrollControllerDemoState createState() => _ScrollControllerDemoState();
}

class _ScrollControllerDemoState extends State<ScrollControllerDemo> {
  final ScrollController _controller = ScrollController();
  bool _isScrolling = false;
  ValueNotifier<bool> isShowBox = ValueNotifier(true);
  @override
  void initState() {
    super.initState();
    _controller.addListener(_scrollListener);
  }

  @override
  void dispose() {
    _controller.removeListener(_scrollListener);
    _controller.dispose();
    super.dispose();
  }

  void _scrollListener() {
    print(_controller.position.userScrollDirection);
    if (_controller.position.userScrollDirection == ScrollDirection.forward) {
      isShowBox.value = true;
    } else {
      isShowBox.value = false;
    }

    if (_controller.offset >= _controller.position.maxScrollExtent &&
        !_controller.position.outOfRange) {
      print('Reach the bottom of scroll view');
    }
    if (_controller.offset <= _controller.position.minScrollExtent &&
        !_controller.position.outOfRange) {
      print('Reach the top of scroll view');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CustomScrollView(
            controller: _controller,
            slivers: [
              SliverToBoxAdapter(
                child: Container(
                  height: 200,
                  color: Colors.red,
                ),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    return Container(
                      height: 50,
                      color: Colors.grey[300],
                      child: Center(child: Text('Item $index')),
                    );
                  },
                  childCount: 20,
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            child: ScrollToHideWidget(
              controller: _controller,
              child: Container(
                color: Colors.blue,
                height: 100,
                width: MediaQuery.of(context).size.width,
              ),
            ),
          ),

          // ValueListenableBuilder(
          //   valueListenable: isShowBox,
          //   builder: (context, value, child) {
          //     return isShowBox.value == true
          //         ? Positioned(
          //             bottom: 0,
          //             child: Container(
          //               color: Colors.blue,
          //               height: 50,
          //               width: MediaQuery.of(context).size.width,
          //             ),
          //           )
          //         : Container();
          //   },
          // )
        ],
      ),
    );
  }
}

class ScrollToHideWidget extends StatefulWidget {
  const ScrollToHideWidget(
      {super.key,
      required this.child,
      required this.controller,
      this.duration = const Duration(milliseconds: 200)});

  final Widget child;
  final ScrollController controller;
  final Duration duration;

  @override
  State<ScrollToHideWidget> createState() => _ScrollToHideWidgetState();
}

class _ScrollToHideWidgetState extends State<ScrollToHideWidget> {
  @override
  void initState() {
    super.initState();
    widget.controller.addListener(_onListenController);
  }

  @override
  void dispose() {
    super.dispose();
    widget.controller.removeListener(_onListenController);
  }

  void _onListenController() {
    final direction = widget.controller.position.userScrollDirection;
    if (direction == ScrollDirection.forward && !isVisible) {
      setState(() {
        isVisible = true;
      });
    } else if (direction == ScrollDirection.reverse && isVisible) {
      setState(() {
        isVisible = false;
      });
    }
  }

  bool isVisible = true;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: widget.duration,
      height: isVisible ? 100 : 0,
      child: Wrap(children: [widget.child]),
    );
  }
}
