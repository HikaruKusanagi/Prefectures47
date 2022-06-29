import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

// class MyWidget extends StatefulWidget {
//   const MyWidget({Key? key}) : super(key: key);

//   @override
//   State<MyWidget> createState() => _MyWidgetState();
// }

// class _MyWidgetState extends State<MyWidget> {
//   Image Hokaido = Image.asset('images/1_hokkaidou.png');
//   String correctanswer = '正解';
//   String computerHand = '✊';

//   List<String> imgURLs = [
//     'images/1_hokkaidou.png',
//     'images/2_touhoku1__aomori.png',
//     'images/2_touhoku4__akita.png',
//     ];

//   void selectHand(Image selectedHand) {
//     Hokaido = selectedHand;
//     generateComputerHand();
//     judge();
//     setState(() {});
//   }

//   void generateComputerHand() {
//     final randomNumber = Random().nextInt(3);
//     computerHand = randomNumberToHand(randomNumber);
//   }

//   String randomNumberToHand(int randomNumber) {
//     switch (randomNumber) {
//       case 0:
//         return '✊';
//       case 1:
//         return '✌️';
//       case 2:
//         return '✋';
//       default:
//         return '✊';
//     }
//   }

//   void judge() {
//     // if (computerHand == myHand) {
//     //   result = '引き分け';
//     // } else if (myHand == '✊' && computerHand == '✌️') {
//     //   result = '勝ち';
//     // } else if (myHand == '✌️' && computerHand == '✋️') {
//     //   result = '勝ち';
//     // } else if (myHand == '✋️' && computerHand == '✊') {
//     //   result = '勝ち';
//     // }
//     if (computerHand == myHand) {
//       result = '引き分け';
//     } else if (myHand == '✊' && computerHand == '✌️' ||
//         myHand == '✌️' && computerHand == '✋️' ||
//         myHand == '✋️' && computerHand == '✊') {
//       result = '勝ち';
//     } else {
//       result = '負け';
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold();
//   }
// }
