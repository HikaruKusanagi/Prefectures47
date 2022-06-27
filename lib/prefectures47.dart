import 'dart:math';

import 'package:flutter/material.dart';
import 'package:prefectures47/quiz_page.dart';

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
      body: Column(children: [
        SizedBox(height: 32),
        Center(
          child: Text('Prefectures47',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
              )),
        ),
        SizedBox(height: 22),
        Image.asset('images/nihonchizu_area.png'),
        Center(
          child: TextButton(
            child: Text(
              'はじめる',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => QuizPage()),
            ),
          ),
        ),
        Center(
          child: TextButton(
            child: Text(
              '利用規約',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            onPressed: () => print('クリックされました'),
          ),
        ),
        Center(
          child: TextButton(
            child: Text(
              'お問い合わせ',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            onPressed: () => print('クリックされました'),
          ),
        ),
      ]),
    );
  }
}
