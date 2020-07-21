import 'package:flutter/material.dart';

class CardListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Card")),
      body: _CardWidget(),
    );
  }
}

class _CardWidget extends StatelessWidget {
  final items = List<String>.generate(10000, (i) => "Item $i");

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return CardItem(name: items[index]);
      },
    );
  }
}

class CardItem extends StatelessWidget {
  final String name;

  CardItem({Key key, @required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        margin: EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.leak_add),
              title: Text("Card $name"),
              subtitle: Text("Card subtitle"),
            ),
            ButtonBar(
              children: <Widget>[
                FlatButton(
                  child: const Text("Buy tickets"),
                  onPressed: () {
                    var snackBar = SnackBar(content: Text("Click!"));
                    Scaffold.of(context).showSnackBar(snackBar);
                  },
                ),
                FlatButton(
                  child: const Text("Listen"),
                  onPressed: () {
                    var snackBar = SnackBar(content: Text("Click!"));
                    Scaffold.of(context).showSnackBar(snackBar);
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
