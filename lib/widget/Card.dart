import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Card")),
      body: CardWidget(),
    );
  }
}

class CardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        margin: EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const ListTile(
              leading: Icon(Icons.leak_add),
              title: Text("Card title"),
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
