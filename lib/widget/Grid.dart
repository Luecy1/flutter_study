import 'package:flutter/material.dart';

class GridListPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var list = [
      Icon(Icons.accessibility),
      Icon(Icons.backspace),
      Icon(Icons.cake),
      Icon(Icons.dashboard),
      Icon(Icons.error),
      Icon(Icons.favorite_border),
      Icon(Icons.g_translate),
      Icon(Icons.http),
      Icon(Icons.image),
      Icon(Icons.accessibility),
      Icon(Icons.backspace),
      Icon(Icons.cake),
      Icon(Icons.dashboard),
      Icon(Icons.error),
      Icon(Icons.favorite_border),
      Icon(Icons.g_translate),
      Icon(Icons.http),
      Icon(Icons.image),
      Icon(Icons.keyboard),
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('GridView'),
        ),
        body: GridView.count(
          scrollDirection: Axis.horizontal,
          crossAxisCount: 2,
          children: list,
        ),
      ),
    );
  }
}
