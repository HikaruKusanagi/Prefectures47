import 'package:flutter/material.dart';
import 'package:prefectures47/name_of_prefectures.dart';

class KyushuWidget4 extends StatelessWidget {
  const KyushuWidget4({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
              NameOfPrefectures.shizuoka,
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
        Row(
          children: [
            Center(
              child: TextButton(
                style: TextButton.styleFrom(
                  side: BorderSide(
                    color: Colors.black, //色
                    width: 2, //太さ
                  ),
                ),
                child: Text(
                  NameOfPrefectures.aichi,
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
      ],
    );
  }
}
