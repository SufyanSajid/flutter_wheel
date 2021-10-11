// // ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

// import 'dart:async';
// import 'dart:math';

// import 'package:flutter/material.dart';
// import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';

// class Spinwheel extends StatefulWidget {
//   const Spinwheel({Key? key}) : super(key: key);

//   @override
//   State<Spinwheel> createState() => _SpinwheelState();
// }

// class _SpinwheelState extends State<Spinwheel> {
//   int selectedValue = 0;
  
//   @override
//   void dispose() {
//     // TODO: implement dispose

//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Container(
//             height: 400,
//             child: 
//           ),
          
//         ],
//       ),
//     );
//   }
// }
// ElevatedButton(
            
//             onPressed: () {
//               setState(() {
//                 selected.add(
//                   Fortune.randomInt(0, 6),
//                 );
//               });
//             },
//             child: Text('Spin'),
//           )