import 'package:flutter/material.dart';

class DataTablePage extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(_title)),
      body: _DataTableWidget(),
    );
  }
}

class _DataTableWidget extends StatelessWidget {
  _DataTableWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var rowList = List<DataRow>.generate(1000, (int index) {
      return DataRow(cells: [
        DataCell(Text('aaaaaaaaaaaaaaaaaaaaaa')),
        DataCell(Text(index.toString())),
        DataCell(Text('aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa')),
      ]);
    });

    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
          columns: const <DataColumn>[
            DataColumn(
              label: Text(
                'Name',
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
            ),
            DataColumn(
              label: Text(
                'Age',
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
            ),
            DataColumn(
              label: Text(
                'Role',
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
            ),
          ],
          rows: rowList,
        ),
      ),
    );
  }
}
