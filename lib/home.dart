import 'package:flutter/material.dart';

class  MyHomePage extends StatefulWidget {
  const MyHomePage ({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(title: Text('じゃんけん'),),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                print('✊');
              },
              child: Text('✊'),
            ),
            ElevatedButton(
              onPressed: () {
                print('✌️');
              },
              child: Text('✌️'),
            ),
            ElevatedButton(
              onPressed: () {
                print('✋');
              },
              child: Text('✋'),
            ),
          ],
        ),
      ),
    );
  }
}
