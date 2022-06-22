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
    print(selectedHand);
    generateComputerHand();
    setState((){});
  }

  void generateComputerHand() {
   print(Random().nextInt(3));
  }

  void randomNumberToHand(int randomNumber) {
    print(Random().nextInt(3));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(title: Text('じゃんけん'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(myHand,style: TextStyle(fontSize: 32),
            ),
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
