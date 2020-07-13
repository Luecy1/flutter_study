import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "test",
    home: ImagePage(),
  ));
}

class ImagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("test"),
      ),
      body: Center(
        child: Image.network(
          'https://picsum.photos/250?image=9',
        ),
      ),
    );
  }
}
