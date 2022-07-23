import 'dart:math';

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String computerHand = '北海道';
  String myHand = '北海道';
  String result = '正解';

  List<String> imgURLs = [
    //ここに表示したい画像URLを追加
    'images/1_hokkaidou.png',
    // 'images/2_touhoku1__aomori.png',
    // 'images/2_touhoku2__iwate.png',
    // 'images/2_touhoku3__miyagi.png',
    // 'images/2_touhoku4__akita.png',
    // 'images/2_touhoku5__yamagata.png',
    // 'images/3_kantou1__ibaraki.png',
    // 'images/3_kantou2__tochigi.png',
    // 'images/3_kantou3__gunma.png',
    // 'images/3_kantou4__saitama.png',
    // 'images/3_kantou5__chiba.png',
    // 'images/3_kantou6__tokyo.png',
    // 'images/3_kantou7__kanagawa.png',
    // 'images/4_chuubu1_yamanashi.png',
    // 'images/4_chuubu2_nagano.png',
    // 'images/4_chuubu3_niigata.png',
    // 'images/4_chuubu4_toyama.png',
    // 'images/4_chuubu5_ishikawa.png',
    // 'images/4_chuubu6_fukui.png',
    // 'images/4_chuubu7_shizuoka.png',
    // 'images/4_chuubu8_aichi.png',
    // 'images/4_chuubu9_gifu.png',
    // 'images/5_kinki1_mie.png',
    // 'images/5_kinki2_shiga.png',
    // 'images/5_kinki3_kyouto.png',
    // 'images/5_kinki4_osaka.png',
    // 'images/5_kinki5_hyougo.png',
    // 'images/5_kinki6_nara.png',
    // 'images/6_chuugoku1_tottori.png',
    // 'images/6_chuugoku2_shimane.png',
    // 'images/6_chuugoku3_okayama.png',
    // 'images/6_chuugoku4_hiroshima.png',
    // 'images/6_chuugoku5_yamaguchi.png',
    // 'images/7_shikoku1_kagawa.png',
    // 'images/7_shikoku2_ehime.png',
    // 'images/7_shikoku3_tokushima.png',
    // 'images/7_shikoku4_kouchi.png',
  ];

  void selectHand(String selectedHand) {
    myHand = selectedHand;

    judge();
    setState(() {});
  }

  void randomNumberToHand() {
    switch () {
      case 0:
        this.imgURLs;
        return;
      case 1:
        return;
      case 2:
        return;
      default:
        return;
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
      result = '正解';
    } else if (myHand == '北海道' && computerHand == '✌️' ||
        myHand == '✌️' && computerHand == '✋️' ||
        myHand == '✋️' && computerHand == '北海道') {
      result = '勝ち';
    } else {
      result = '負け';
    }
  }

  @override
  Widget build(BuildContext context) {
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
            Text(
              computerHand,
              style: TextStyle(fontSize: 32),
            ),
            SizedBox(height: 40),
            Text(
              myHand,
              style: TextStyle(fontSize: 32),
            ),
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
