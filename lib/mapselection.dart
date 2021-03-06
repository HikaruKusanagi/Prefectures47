import 'package:flutter/material.dart';
import 'package:prefectures47/kanto/kantopage.dart';
import 'package:prefectures47/kinki/kinkipage.dart';
import 'package:prefectures47/kyushu/kyushupage.dart';
import 'package:prefectures47/shikoku/shikokupage.dart';
import 'package:prefectures47/tohoku/tohokupage.dart';
import 'chubu/chubupage.dart';

class MapSelection extends StatefulWidget {
  const MapSelection({Key? key}) : super(key: key);

  @override
  State<MapSelection> createState() => _MapSelectionState();
}

class _MapSelectionState extends State<MapSelection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('地方選択'), backgroundColor: Colors.black),
      body: ListView(children: [
        Row(
          children: [
            SizedBox(
                height: 180,
                width: 180,
                child: Image.asset('images/1_hokkaidou.png')),
            Image.asset('images/thumbnail_map1_touhoku.jpeg'),
          ],
        ),
        Center(
          child: TextButton(
            child: Text(
              '東北地方',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const TohokuPage()),
            ),
          ),
        ),
        Row(
          children: [
            Image.asset('images/thumbnail_map2_kantou.jpeg'),
            InkWell(
                onTap: () {
                  print('test3');
                },
                child: Image.asset('images/thumbnail_map3_chuubu.jpeg')),
          ],
        ),
        Row(
          children: [
            Center(
              child: TextButton(
                child: Text(
                  '関東地方',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const KantoPage()),
                ),
              ),
            ),
            SizedBox(width: 50),
            Center(
              child: TextButton(
                child: Text(
                  '中部地方',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ChubuPage()),
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Image.asset('images/thumbnail_map4_kinki.jpeg'),
            Image.asset('images/thumbnail_map5_chuugoku.jpeg'),
          ],
        ),
        Row(
          children: [
            Center(
              child: TextButton(
                child: Text(
                  '近畿地方',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const KinkiPage()),
                ),
              ),
            ),
            SizedBox(width: 50),
            Center(
              child: TextButton(
                child: Text(
                  '中国地方',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ChubuPage()),
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Image.asset('images/thumbnail_map6_shikoku.jpeg'),
            Image.asset('images/thumbnail_map7_kyusyu.jpeg'),
          ],
        ),
        Row(
          children: [
            Center(
              child: TextButton(
                child: Text(
                  '四国地方',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ShikokuPage()),
                ),
              ),
            ),
            SizedBox(width: 50),
            Center(
              child: TextButton(
                child: Text(
                  '九州地方',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const KyushuPage()),
                ),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
