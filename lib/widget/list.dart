import 'package:flutter/material.dart';
import 'package:flutter_study/widget/subpage.dart';

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
            title: Text("subpage"),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                return SubPage();
              }));
            },
          )
        ],
      ),
    );
  }
}
