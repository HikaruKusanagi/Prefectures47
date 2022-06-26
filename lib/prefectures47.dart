import 'dart:math';

import 'package:flutter/material.dart';

class Prefectures47 extends StatefulWidget {
  const Prefectures47({Key? key}) : super(key: key);

  @override
  State<Prefectures47> createState() => _Prefectures47State();
}

class _Prefectures47State extends State<Prefectures47> {
  String computerHand = '✊';
  String myHand = '✊';
  String result = '引き分け';

  void selectHand(String selectedHand) {
    myHand = selectedHand;
    generateComputerHand();
    judge();
    setState(() {});
  }

  void generateComputerHand() {
    final randomNumber = Random().nextInt(3);
    computerHand = randomNumberToHand(randomNumber);
  }

  String randomNumberToHand(int randomNumber) {
    switch (randomNumber) {
      case 0:
        return '✊';
      case 1:
        return '✌️';
      case 2:
        return '✋';
      default:
        return '✊';
    }
  }

  void judge() {
    // if (computerHand == myHand) {
    //   result = '引き分け';
    // } else if (myHand == '✊' && computerHand == '✌️') {
    //   result = '勝ち';
    // } else if (myHand == '✌️' && computerHand == '✋️') {
    //   result = '勝ち';
    // } else if (myHand == '✋️' && computerHand == '✊') {
    //   result = '勝ち';
    // }
    if (computerHand == myHand) {
      result = '引き分け';
    } else if (myHand == '✊' && computerHand == '✌️' ||
        myHand == '✌️' && computerHand == '✋️' ||
        myHand == '✋️' && computerHand == '✊') {
      result = '勝ち';
    } else {
      result = '負け';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Prefecter47'),
      ),
      body: Column(children: [
        SizedBox(height: 130),
        Center(
          child: Text('TodofuQuiz   47',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 42,
              )),
        ),
      ]),
    );
  }
}
