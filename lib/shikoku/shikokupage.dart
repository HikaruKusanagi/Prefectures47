import 'dart:math';

import 'package:flutter/material.dart';
import 'package:prefectures47/kanto/kantowidget.dart/kantowidget.dart';
import 'package:prefectures47/kanto/kantowidget.dart/kantowidget1.dart';

class ShikokuPage extends StatefulWidget {
  const ShikokuPage({Key? key}) : super(key: key);

  @override
  State<ShikokuPage> createState() => _ShikokuPageState();
}

class _ShikokuPageState extends State<ShikokuPage> {
  @override
  Widget build(BuildContext context) {
    String? _imgURL;
    List<String> imgURLs = [
      //ここに表示したい画像URLを追加

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
      'images/7_shikoku1_kagawa.png',
      'images/7_shikoku2_ehime.png',
      'images/7_shikoku3_tokushima.png',
      'images/7_shikoku4_kouchi.png',
    ];
    final ram = Random(
        DateTime.now().millisecondsSinceEpoch); //乱数の種を時間ごとに変更するためのDataTime
    _imgURL = imgURLs[ram.nextInt(imgURLs.length)];

    return Scaffold(
        appBar:
            AppBar(title: Text('第一問、この地形は何県？'), backgroundColor: Colors.black),
        body: Column(children: [
          Image.asset(_imgURL),
          Expanded(
            child: ListView(children: const [
              KantoWidget(),
              SizedBox(height: 30),
              KantoWidget1(),
            ]),
          ),
        ]));
  }
}
