import 'package:flutter/material.dart';

class SubPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("page2"),
      ),
      body: Container(
        child: Text("page2"),
      ),
    );
  }
}
