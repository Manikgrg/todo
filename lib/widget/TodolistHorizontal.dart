import 'package:flutter/material.dart';

import 'package:todo/widget/PageViewItemList.dart';

class ToDolistHorizontal extends StatelessWidget {
  ToDolistHorizontal({super.key});

  PageController _pageController = PageController(viewportFraction: 0.8);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        allowImplicitScrolling: true,
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        controller: _pageController,
        itemBuilder: (context, index) {
          return PageViewItemList();
        });
  }
}
