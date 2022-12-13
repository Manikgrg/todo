import 'package:flutter/material.dart';

import 'package:todo/widget/page_view_item_list.dart';

class ToDolistHorizontal extends StatefulWidget {
  ToDolistHorizontal({super.key});

  @override
  State<ToDolistHorizontal> createState() => _ToDolistHorizontalState();
}

class _ToDolistHorizontalState extends State<ToDolistHorizontal> {
  final PageController _pageController = PageController(viewportFraction: 0.8);
  final _colorshade = [Colors.orange, Colors.blue, Colors.green, Colors.red];

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        allowImplicitScrolling: true,
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        controller: _pageController,
        itemBuilder: (context, index) {
          final colorindex = index > 3 ? index % 3 : index;

          return PageViewItemList(
            colorshade: _colorshade[colorindex],
          );
        });
  }
}
