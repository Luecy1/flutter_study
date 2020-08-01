import 'package:flutter/material.dart';
import 'package:flutter_study/dart/main.dart';

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
    final hanList = List.generate(13, (index) {
      return index + 1;
    });

    final huList = List.generate(5, (index) {
      return 20 + index * 10;
    });

    final dataColumnList = [DataColumn(label: Text(''))] +
        huList.map((hu) {
          return DataColumn(
            label: Text(
              ' ${hu}符 ',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          );
        }).toList();

    final rowList = hanList.map((han) {
      final hanText = [DataCell(Text('${han} 翻'))];

      final dataCellList = hanText +
          huList.map((hu) {
            return DataCell(Text(' ${calc(hu, han).toString()} 点 '));
          }).toList();
      return DataRow(cells: dataCellList);
    }).toList();

    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
          columns: dataColumnList,
          rows: rowList,
        ),
      ),
    );
  }
}
