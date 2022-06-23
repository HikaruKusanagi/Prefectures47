import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class PixabayPage extends StatefulWidget {
  const PixabayPage({Key? key}) : super(key: key);

  @override
  State<PixabayPage> createState() => _PixabayPageState();
}

class _PixabayPageState extends State<PixabayPage> {
  // 初めは空のListを入れておく
  List hits = [];

  Future <void> fetchImage() async {
    Response response = await Dio().get('https://pixabay.com/api/?key=28219540-f0f906ca4c183c521352d1aa0&q=yellow+flowers&image_type=photo&pretty=true');
    hits = response.data['hits'];
    setState((){});
  }
  @override
  void initState() {
    super.initState();
    //　最初に一度だけ呼ばれる
    fetchImage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemCount: hits.length,
          itemBuilder: (context, index) {
            Map<String,dynamic> hit = hits[index];
            return Image.network(hit['previewURL']);
          },
      ),
    );
  }
}
