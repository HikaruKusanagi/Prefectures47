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
    return Scaffold(
      appBar:
          AppBar(title: Text('第一問、この地形は何県？'), backgroundColor: Colors.black),
      body: Column(
        children: [
          SizedBox(height: 30),
          Image.asset('images/1_hokkaidou.png'),
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
