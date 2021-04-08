import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellowAccent,
        title: Text('Fadiyah Khairunnisa - 6SIA6'),
      ),
      body: ListView(children: <Widget>[
        Center(
            child: Text('Data Harga Barang',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
        DataTable(
          columns: [
            DataColumn(label: Text('No')),
            DataColumn(label: Text('Nama Barang')),
            DataColumn(label: Text('Harga')),
          ],
          rows: [
            DataRow(cells: [
              DataCell(Text('1.')),
              DataCell(Text('Celana Panjang')),
              DataCell(Text('Rp.200.000')),
            ]),
            DataRow(cells: [
              DataCell(Text('2.')),
              DataCell(Text('Sendal')),
              DataCell(Text('Rp.120.000')),
            ]),
            DataRow(cells: [
              DataCell(Text('3.')),
              DataCell(Text('Kemeja')),
              DataCell(Text('Rp.150.000')),
            ]),
            DataRow(cells: [
              DataCell(Text('4.')),
              DataCell(Text('Sepatu')),
              DataCell(Text('Rp.250.000')),
            ]),
          ],
        ),
      ]),
    );
  }
}