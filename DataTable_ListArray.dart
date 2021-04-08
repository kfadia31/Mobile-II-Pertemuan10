import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
   List<Mahasiswa> mahasiswa;  //deklarasi
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Text('Fadiyah Khairunnisa - 6SIA6'),
      ),
      body: ListView(children: <Widget>[
        Center(
            child: Text('Data Mahasiswa',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
        DataTable(
          columns: [
            DataColumn(label: Text('NIRM')),
            DataColumn(label: Text('Nama Mahasiswa')),
            DataColumn(label: Text('Jurusan')),
          ],
          rows: Mahasiswa.getMahasiswa()
  .map(
    (mahasiswa) => DataRow(cells: [
      DataCell(Text(mahasiswa.nirm)),
      DataCell(Text(mahasiswa.namamhs)),
      DataCell(Text(mahasiswa.jurusan)),
             ]),
           )
  .toList(),
        ),
      ]),
    );
  }
}
class Mahasiswa {
  //Attribut
  String nirm;
  String namamhs;
  String jurusan;

  //Constructor
  Mahasiswa({this.nirm, this.namamhs, this.jurusan});

  //Data List
  static List<Mahasiswa> getMahasiswa() {
    return <Mahasiswa>[
      Mahasiswa(nirm: "2018020061", namamhs: "Fadiyah Khairunnisa", jurusan: "Sistem Informasi"),
      Mahasiswa(nirm: "2018020526", namamhs: "Intan Adi Putri", jurusan: "Sistem Informasi"),
      Mahasiswa(nirm: "2018020303", namamhs: "Osar Tri Sasongko", jurusan: "Sistem Informasi"),

    ];
  }
}