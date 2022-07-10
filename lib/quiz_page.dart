import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({Key? key}) : super(key: key);

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  @override
  Widget build(BuildContext context) {
    String? _imgURL;
    List<String> imgURLs = [
      //ここに表示したい画像URLを追加
      'images/1_hokkaidou.png',
      'images/2_touhoku1__aomori.png',
      'images/2_touhoku2__iwate.png',
      'images/2_touhoku3__miyagi.png',
      'images/2_touhoku4__akita.png',
      'images/2_touhoku5__yamagata.png'
    ];

    final ram = Random(
        DateTime.now().millisecondsSinceEpoch); //乱数の種を時間ごとに変更するためのDataTime
    _imgURL = imgURLs[ram.nextInt(imgURLs.length)];

    return Scaffold(
      appBar:
          AppBar(title: Text('第一問、この地形は何県？'), backgroundColor: Colors.black),
      body: Column(
        children: [
          SizedBox(height: 30),
          Image.asset(_imgURL),
          SizedBox(height: 60),
          Row(
            children: [
              SizedBox(width: 20),
              Center(
                child: TextButton(
                  style: TextButton.styleFrom(
                    side: BorderSide(
                      color: Colors.black, //色
                      width: 2, //太さ
                    ),
                  ),
                  child: Text(
                    '秋田県',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: () => print('クリックされました'),
                ),
              ),
              SizedBox(width: 30),
              Center(
                child: TextButton(
                  style: TextButton.styleFrom(
                    side: BorderSide(
                      color: Colors.black, //色
                      width: 2, //太さ
                    ),
                  ),
                  child: Text(
                    '岩手県',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: () => print('クリックされました'),
                ),
              ),
            ],
          ),
          SizedBox(height: 30),
          Row(
            children: [
              SizedBox(width: 20),
              Center(
                child: TextButton(
                  style: TextButton.styleFrom(
                    side: BorderSide(
                      color: Colors.black, //色
                      width: 2, //太さ
                    ),
                  ),
                  child: Text(
                    '青森県',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: () => print('クリックされました'),
                ),
              ),
              SizedBox(width: 30),
              Center(
                child: TextButton(
                  style: TextButton.styleFrom(
                    side: BorderSide(
                      color: Colors.black, //色
                      width: 2, //太さ
                    ),
                  ),
                  child: Text(
                    '北海道',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: () => print('クリックされました'),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
