import 'package:flutter/material.dart';
import 'package:flutter_study/widget/Card.dart';
import 'package:flutter_study/widget/CardList.dart';
import 'package:flutter_study/widget/DataTable.dart';
import 'package:flutter_study/widget/Grid.dart';
import 'package:flutter_study/widget/GridList.dart';
import 'package:flutter_study/widget/Input.dart';
import 'package:flutter_study/widget/LayoutBasic.dart';
import 'package:flutter_study/widget/LayoutIroIro.dart';
import 'package:flutter_study/widget/Network.dart';
import 'package:flutter_study/widget/subpage.dart';

void main() {
  runApp(MaterialApp(
    title: 'ListPage',
    home: ListPage(),
  ));
}

class ListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview'),
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
          ),
          ListTile(
            title: Text("layout basic"),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                return LayoutBasic();
              }));
            },
          ),
          ListTile(
            title: Text("card"),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                return CardPage();
              }));
            },
          ),
          ListTile(
            title: Text("card list"),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                return CardListPage();
              }));
            },
          ),
          ListTile(
            title: Text("grid list"),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                return GridListPage();
              }));
            },
          ),
          ListTile(
            title: Text("network"),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                return NetworkPage();
              }));
            },
          ),
          ListTile(
            title: Text('Input'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                return InputPage();
              }));
            },
          ),
          ListTile(
            title: Text('Grid List'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                return GridListPage2();
              }));
            },
          ),
          ListTile(
            title: Text('Datatable'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                return DataTablePage();
              }));
            },
          ),
          ListTile(
            title: Text('LayoutIroIro'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                return LayoutIroIro();
              }));
            },
          ),
        ],
      ),
    );
  }
}
