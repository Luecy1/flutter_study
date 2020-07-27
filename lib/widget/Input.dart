import 'package:flutter/material.dart';

class InputPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Input'),
      ),
      body: _InputWidget(),
    );
  }
}

class _InputWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
      margin: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 120.0),
          Text('input!'),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'hogehoge',
            ),
          ),
          _MyDropdownWidget(),
          SizedBox(height: 20.0),
          _MyRadioButtonWidget(),
        ],
      ));
}

// DropdownButton
class _MyDropdownWidget extends StatefulWidget {
  _MyDropdownWidget({Key key}) : super(key: key);

  @override
  _MyDropdownWidgetState createState() => _MyDropdownWidgetState();
}

class _MyDropdownWidgetState extends State<_MyDropdownWidget> {
  String dropdownValue = 'One';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: Icon(Icons.arrow_downward),
      iconSize: 24,
      elevation: 16,
      style: TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String newValue) {
        setState(() {
          dropdownValue = newValue;
        });
      },
      items: <String>['One', 'Two', 'Free', 'Four'].map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

enum SingingCharacter { oya, ko }

class _MyRadioButtonWidget extends StatefulWidget {
  _MyRadioButtonWidget({Key key}) : super(key: key);

  @override
  _MyRadioButtonWidgetState createState() => _MyRadioButtonWidgetState();
}

class _MyRadioButtonWidgetState extends State<_MyRadioButtonWidget> {
  SingingCharacter _character = SingingCharacter.oya;

  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Row(children: <Widget>[
          Radio(
            value: SingingCharacter.ko,
            groupValue: _character,
            onChanged: (SingingCharacter value) {
              setState(() {
                _character = value;
              });
            },
          ),
          Text('ko'),
        ]),
        Row(children: <Widget>[
          Radio(
            value: SingingCharacter.oya,
            groupValue: _character,
            onChanged: (SingingCharacter value) {
              setState(() {
                _character = value;
              });
            },
          ),
          Text('oya'),
        ]),
      ],
    );
  }
}
