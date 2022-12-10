import 'package:flutter/material.dart';

class ToDolistHorizontal extends StatelessWidget {
  ToDolistHorizontal({super.key});

  PageController _pageController = PageController(viewportFraction: 0.7);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        controller: _pageController,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.all(10.0),
            color: Colors.yellow,
          );
        });
  }
}
