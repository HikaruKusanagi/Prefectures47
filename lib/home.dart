import 'dart:math';

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> imgURLs = [
    'images/1_hokkaidou.png',
    'images/2_touhoku1__aomori.png',
    'images/2_touhoku2__iwate.png',
    'images/2_touhoku3__miyagi.png',
    'images/2_touhoku4__akita.png',
    'images/2_touhoku5__yamagata.png'
  ];

  // void selectHand(String selectedHand) {
  //   imgURLs = selectedHand as List<String>;
  //   // generateComputerHand();
  //   judge(selectHand);
  //   setState(() {});
  // }

  // void generateComputerHand() {
  //   final randomNumber = Random().nextInt(3);
  //   selectHand;
  //   randomNumberToHand(randomNumber);
  // }

  // randomNumberToHand(int randomNumber) {
  //   switch (randomNumber) {
  //     case 0:
  //       return imgURLs;
  //     case 1:
  //       return '✌️';
  //     case 2:
  //       return '✋';
  //     default:
  //       return imgURLs;
  //   }
  // }

  String result = '';

  void _incrementCounter() {
    result = '正解';
    setState(() {});
  }

  judge(selectHand) {
    if (selectHand == imgURLs) {
      result = '正解';
      // } else if (_imgURL == '北海道' && selectHand == '✌️' ||
      //     _imgURL == '✌️' && selectHand == '✋️' ||
      //     _imgURL == '✋️' && selectHand == '北海道') {
      //   result = '';
      // } else {
      //   result = '';
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
              '$result',
              style: TextStyle(fontSize: 32),
            ),
            SizedBox(height: 32),
            Image.asset(_imgURL),
            SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: _incrementCounter,
                  child: Text('北海道'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
