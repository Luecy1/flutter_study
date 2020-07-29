import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Image',
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image'),
      ),
      body: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Expanded(
            child: Image.asset('images/pic1.png'),
          ),
          Expanded(
            flex: 2,
            child: Image.asset('images/pic2.png'),
          ),
          Expanded(
            child: Image.asset('images/pic3.png'),
          ),
        ],
      ),
    );
  }
}
