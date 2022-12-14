import 'package:flutter/material.dart';
import 'package:step_progress_indicator/src/circular_step_progress_indicator.dart';

class PageViewItemList extends StatefulWidget {
  final Color colorshade;

  const PageViewItemList({super.key, required this.colorshade});

  @override
  State<PageViewItemList> createState() => _PageViewItemListState();
}

class _PageViewItemListState extends State<PageViewItemList> {
  String textdescription = '''Design a simple homepages with clean
layout and color based on the guidelines..''';
  var progressdata = 78;
  bool stop = false;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(10.0),
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              color: widget.colorshade,
              spreadRadius: 5,
              offset: Offset(0, 5),
              blurStyle: BlurStyle.inner),
        ], color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
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
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                            color: Color.fromARGB(255, 251, 243, 172),
                            spreadRadius: 10)
                      ]),
                  child: const Icon(
                    Icons.people_outline,
                    size: 20,
                  )),
            ],
          ),
          const SizedBox(
            height: 6,
          ),
          const Divider(
            thickness: 1.0,
          ),
          const SizedBox(
            height: 6,
          ),
          const Text(
            "Description",
            style: TextStyle(
                color: Color.fromARGB(255, 212, 211, 211), fontSize: 12),
          ),
          Text(
            textdescription,
            style: const TextStyle(
                color: Color.fromARGB(255, 21, 20, 20), fontSize: 12),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
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
                  const Text(
                    "Progress:",
                    style: TextStyle(
                        color: Color.fromARGB(255, 212, 211, 211),
                        fontSize: 12),
                  ),
                  tap(progressdata: progressdata),
                ],
              )
            ],
          ),
        ]));
  }

  Future<void> loop() async {
    progressdata = 1;
    stop = false;
    for (int i = 1; i <= 100; i++) {
      // if (!stream.isClosed) stream.sink.addStream(Stream.value(i));
      await Future.delayed(const Duration(milliseconds: 50));
      var element = i;
      // print(element);
      if (!stop) {
        setState(() {
          progressdata = i;
          //   print(progressdata);
        });
      } else {
        // print("stop");
        break;
      }
    }
    if (!stop) {
      progressdata = 1;
      loop();
    }
  }

  Future<void> loopstop() async {
    stop = true;
  }

  Widget tap({required final int progressdata}) {
    return GestureDetector(
        onDoubleTap: loop,
        onLongPress: loopstop,
        child: Row(
          children: [
            CircularStepProgressIndicator(
              totalSteps: 100,
              currentStep: progressdata,
              stepSize: 1.0,
              selectedColor: const Color.fromARGB(255, 166, 229, 199),
              unselectedColor: Colors.grey[200],
              padding: 0,
              width: 20,
              height: 20,
              selectedStepSize: 3,
            ),
            Text(
              progressdata.toString(),
              style: const TextStyle(
                  color: Color.fromARGB(255, 74, 73, 73),
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ));
  }
}




/*
Row(
                    children: [
                      CircularStepProgressIndicator(
                        totalSteps: 100,
                        currentStep: progressdata,
                        stepSize: 1.0,
                        selectedColor: Color.fromARGB(255, 166, 229, 199),
                        unselectedColor: Colors.grey[200],
                        padding: 0,
                        width: 20,
                        height: 20,
                        selectedStepSize: 3,
                      ),
                      Text(
                        progressdata.toString(),
                        style: TextStyle(
                            color: Color.fromARGB(255, 74, 73, 73),
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
*/