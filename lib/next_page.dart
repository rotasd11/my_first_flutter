
import 'package:flutter/material.dart';

class NextPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: Text('2ページ目へようこそ！'),
      ),
      body: Center(
        child: ElevatedButton(
        onPressed: () {  },//ここにコード書く
        child: Text('戻る'),
    )
    )
    );
  }

}