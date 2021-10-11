// ignore_for_file: file_names, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';

class Spinner extends StatefulWidget {
  const Spinner({Key? key}) : super(key: key);

  @override
  _SpinnerState createState() => _SpinnerState();
}

class _SpinnerState extends State<Spinner> {
  StreamController<int> selected = StreamController<int>();
  void onCall() {
    setState(() {
      selected.add(
        Fortune.randomInt(0, 6),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        FortuneWheel(
          selected: selected.stream,
          animateFirst: false,
          items: [
            FortuneItem(
              child: Text('1'),
              style: FortuneItemStyle(
                color: Colors.orangeAccent,
                borderColor: Colors.yellow,
                borderWidth: 15,
                textStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            FortuneItem(
              child: Text('2'),
              style: FortuneItemStyle(
                color: Colors.purpleAccent,
                borderColor: Colors.red,
                borderWidth: 15,
                textStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            FortuneItem(
              child: Text('3'),
              style: FortuneItemStyle(
                color: Colors.green,
                borderColor: Colors.blue,
                borderWidth: 15,
                textStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            FortuneItem(
              child: Text('4'),
              style: FortuneItemStyle(
                color: Colors.orangeAccent,
                borderColor: Colors.yellow,
                borderWidth: 15,
                textStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            FortuneItem(
              child: Text('5'),
              style: FortuneItemStyle(
                color: Colors.grey,
                borderColor: Colors.brown,
                borderWidth: 15,
                textStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            FortuneItem(
              child: Text('6'),
              style: FortuneItemStyle(
                color: Colors.pink,
                borderColor: Colors.purpleAccent,
                borderWidth: 15,
                textStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ],
          onAnimationEnd: () {
            print('value is $selected');
          },
          physics: CircularPanPhysics(
            duration: Duration(seconds: 1),
            curve: Curves.decelerate,
          ),
          onFling: () {
            selected.add(1);
          },
          styleStrategy: UniformStyleStrategy(
            borderColor: Colors.black,
            borderWidth: 5,
          ),
        ),
        Positioned(
          left: 170,
          top: 305,
          child: GestureDetector(
            // onTap: () {
            //   setState(() {
            //     selected.add(
            //       Fortune.randomInt(0, 6),
            //     );
            //   });
            // },
            onTap: onCall,
            child: Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(40),
                border: Border.all(width: 5),
              ),
            ),
          ),
        ),
        Positioned(
          left: 183,
          top: 325,
          child: GestureDetector(
            onTap: onCall,
            child: Text(
              'Spin',
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
      ],
    );
  }
}
