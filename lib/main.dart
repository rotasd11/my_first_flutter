import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
      routes: <String, WidgetBuilder> {
        '/home': (BuildContext context) => MainPage(),
        '/subpage': (BuildContext context) => SubPage()
      },
    );
  }
}
class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My First Flutter'),
      ),
      body: Container(
        padding: const EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: <Widget>[
              const Text('メインページ'),
              const Text('ここをクリック'),
              ElevatedButton(
                child: const Text('Nextページへ'),
                onPressed: () => Navigator.of(context).pushNamed("/subpage"),
                )
            ],
          ),
        ),
      ),
    );
  }
}
class SubPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Second Flutter'),
        backgroundColor: Colors.green,
      ),
      body: Container(
        padding: const EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: <Widget>[
              const Text('サブページ'),
              ElevatedButton(onPressed: () => Navigator.of(context).pop(),
                child: const Text('戻る')
                )
            ],
          ),
        ),
      ),
    );
  }
}
