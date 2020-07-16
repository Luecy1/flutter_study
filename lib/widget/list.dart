import 'dart:developer';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "ListPage",
    home: ListPage(),
  ));
}

class ListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Listview"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[
          ListTile(
            title: Text("1"),
            onTap: () {
              log("Tap!");
            },
          )
        ],
      ),
    );
  }
}
