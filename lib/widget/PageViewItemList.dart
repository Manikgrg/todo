import 'package:flutter/material.dart';
import 'package:step_progress_indicator/src/circular_step_progress_indicator.dart';

class PageViewItemList extends StatefulWidget {
  const PageViewItemList({super.key});

  @override
  State<PageViewItemList> createState() => _PageViewItemListState();
}

class _PageViewItemListState extends State<PageViewItemList> {
  String textdescription = '''Design a simple homepages with clean
layout and color based on the guidelines..''';
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Design UI ToDo APP",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: Color.fromARGB(255, 75, 74, 74)),
                  ),
                  Text(
                    "Friday,08 July 2022",
                    style: TextStyle(color: Color.fromARGB(255, 116, 115, 115)),
                  ),
                ],
              ),
              Container(
                  margin: const EdgeInsets.all(15),
                  decoration: BoxDecoration(shape: BoxShape.circle, boxShadow: [
                    BoxShadow(
                        color: Color.fromARGB(255, 251, 243, 172),
                        spreadRadius: 10)
                  ]),
                  child: Icon(
                    Icons.people_outline,
                    size: 20,
                  )),
            ],
          ),
          SizedBox(
            height: 6,
          ),
          Divider(
            thickness: 1.0,
          ),
          SizedBox(
            height: 6,
          ),
          Text(
            "Description",
            style: TextStyle(
                color: Color.fromARGB(255, 212, 211, 211), fontSize: 12),
          ),
          Text(
            textdescription,
            style:
                TextStyle(color: Color.fromARGB(255, 21, 20, 20), fontSize: 12),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Teams:",
                    style: TextStyle(
                        color: Color.fromARGB(255, 212, 211, 211),
                        fontSize: 12),
                  ),
                  Stack(
                    children: [
                      Container(
                          width: 20.0,
                          height: 20.0,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage('assets/png/blackperson1.jpg'),
                                fit: BoxFit.cover),
                            color: Colors.blue,
                            shape: BoxShape.circle,
                          )),
                      Container(
                          margin: const EdgeInsets.only(left: 15),
                          width: 20.0,
                          height: 20.0,
                          decoration: const BoxDecoration(
                              color: Colors.blue,
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage('assets/png/boy.jpg'),
                                  fit: BoxFit.cover))),
                      Container(
                          margin: const EdgeInsets.only(left: 30),
                          width: 20.0,
                          height: 20.0,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/png/girl.jpeg'),
                                fit: BoxFit.cover),
                            color: Colors.blue,
                            shape: BoxShape.circle,
                          )),
                      Container(
                          margin: const EdgeInsets.only(left: 45),
                          width: 20.0,
                          height: 20.0,
                          decoration: const BoxDecoration(
                              color: Colors.blue,
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage('assets/png/sponbob.jpeg'),
                                  fit: BoxFit.cover)))
                    ],
                  )
                ],
              ),
              Column(
                children: [
                  Text(
                    "Progress:",
                    style: TextStyle(
                        color: Color.fromARGB(255, 212, 211, 211),
                        fontSize: 12),
                  ),
                  Row(
                    children: <Widget>[
                      CircularStepProgressIndicator(
                        totalSteps: 100,
                        currentStep: 78,
                        stepSize: 1.0,
                        selectedColor: Color.fromARGB(255, 166, 229, 199),
                        unselectedColor: Colors.grey[200],
                        padding: 0,
                        width: 20,
                        height: 20,
                        selectedStepSize: 3,
                      ),
                      Text(
                        "78%",
                        style: TextStyle(
                            color: Color.fromARGB(255, 74, 73, 73),
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
