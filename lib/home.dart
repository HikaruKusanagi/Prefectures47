import 'dart:math';

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String computerHand = '北海道';
  String _imgURL = '北海道';
  String syokiyi = '';
  String result = '正解';

  List<String> imgURLs = [
    'images/1_hokkaidou.png',
    'images/2_touhoku1__aomori.png',
    'images/2_touhoku2__iwate.png',
    'images/2_touhoku3__miyagi.png',
    'images/2_touhoku4__akita.png',
    'images/2_touhoku5__yamagata.png'
  ];

  void selectHand(String selectedHand) {
    _imgURL = selectedHand;
    generateComputerHand();
    judge();
    setState(() {});
  }

  void generateComputerHand() {
    final randomNumber = Random().nextInt(3);
    computerHand = randomNumberToHand(randomNumber);
  }

  randomNumberToHand(int randomNumber) {
    switch (randomNumber) {
      case 0:
        return _imgURL = 'images/1_hokkaidou.png';
      case 1:
        return '✌️';
      case 2:
        return '✋';
      default:
        return '北海道';
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
    if (computerHand == _imgURL) {
      result = '正解';
    } else if (_imgURL == '北海道' && computerHand == '✌️' ||
        _imgURL == '✌️' && computerHand == '✋️' ||
        _imgURL == '✋️' && computerHand == '北海道') {
      result = '';
    } else {
      result = '';
    }
  }

  @override
  Widget build(BuildContext context) {
    String _imgURL;
    final ram = Random(
        DateTime.now().millisecondsSinceEpoch); //乱数の種を時間ごとに変更するためのDataTime
    _imgURL = imgURLs[ram.nextInt(imgURLs.length)];

    return Scaffold(
      appBar: AppBar(
        title: Text('じゃんけん'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              result,
              style: TextStyle(fontSize: 32),
            ),
            SizedBox(height: 32),
            // Text(
            //   computerHand,
            //   style: TextStyle(fontSize: 32),
            // ),
            Image.asset(_imgURL),
            SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    selectHand('北海道');
                  },
                  child: Text('北海道'),
                ),
                ElevatedButton(
                  onPressed: () {
                    selectHand('✌️');
                  },
                  child: Text('✌️'),
                ),
                ElevatedButton(
                  onPressed: () {
                    selectHand('✋');
                  },
                  child: Text('✋'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
