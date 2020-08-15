import 'package:flutter/material.dart';

class LayoutIroIro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('layout'),
      ),
      body: _MyLayout(),
    );
  }
}

class _MyLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          margin: const EdgeInsets.all(30.0),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.pink),
          ),
          child: FittedBox(
            fit: BoxFit.fitWidth,
            child: Text(
              '通勤快速',
            ),
          ),
        ),
        Container(
          width: double.infinity,
          margin: const EdgeInsets.all(30.0),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.pink),
          ),
          child: FittedBox(
            fit: BoxFit.fitWidth,
            child: Text(
              '11:30',
            ),
          ),
        ),
      ],
    );
  }
}
