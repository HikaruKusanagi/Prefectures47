import 'dart:math';

import 'package:flutter/material.dart';

class  MyHomePage extends StatefulWidget {
  const MyHomePage ({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  String myHand = '✊';

  void selectHand(String selectedHand) {
    myHand = selectedHand;
    generateComputerHand();
    setState((){});
  }

  void generateComputerHand() {
    final randomNumber = Random().nextInt(3);
    print(randomNumberToHand(randomNumber));
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(title: Text('じゃんけん'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(myHand,style: TextStyle(fontSize: 32),),
            SizedBox(height: 32),
            Text(myHand,style: TextStyle(fontSize: 32),),
            SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    selectHand('✊');
                  },
                  child: Text('✊'),
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
