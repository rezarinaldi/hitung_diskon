import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'enterButton.dart';
import 'hargaAkhir.dart';
import 'hargaAwal.dart';
import 'hemat.dart';
import 'riwayat.dart';
import 'inputDiskon.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override //fungsi yang nama dan parameternya sama
  double _inputHarga = 0; //inisialisasi awal variabel
  double _inputDiskon = 0;
  double _hasil = 0;
  double _hemat = 0;
  final hargaController =
      TextEditingController(); //memanggil nilai variabel dalam child class
  final diskonController = TextEditingController();
  List<String> listViewItem =
      List<String>(); //membuat variabel bertipe list<String>

  void initState() {
    super.initState();

    // Start listening to changes.
    diskonController.addListener(_hitungDiskon);
  }

  _hitungDiskon() {
    //fungsi
    setState(() {
      //membuild berulang-ulang tetapi yang diproses hanya yang barusan berubah
      _inputHarga =
          double.parse(hargaController.text); //menkonversi controller ke double
      _inputDiskon = double.parse(diskonController.text);
      _hasil = _inputHarga - (_inputHarga * (_inputDiskon / 100));
      _hemat = _inputHarga - _hasil;
    });
    listViewItem.add(//menampilkan ke list
        _inputHarga.toStringAsFixed(0) + " to " + _hasil.toStringAsFixed(0));
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      //basic app elemen
      title: 'Hitung Diskon',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        //mengatur tata letak
        appBar: AppBar(
          title: Text(
            "Hitung Diskon",
            style: GoogleFonts.inter(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Container(
          //menyimpan berbagai macam atribut
          margin: EdgeInsets.all(25), //mengatur jarak antar widget
          child: Column(
            //menampung widget di dalam container
            children: <Widget>[
              //array of children
              HargaAwal(
                  //menjadikan widget yang lebih kecil menggunakan extact widget
                  hargaController: hargaController),
              InputDiskon(
                //menjadikan widget yang lebih kecil menggunakan extact widget
                diskonController: diskonController,
                //hitungDiskon: _hitungDiskon,
              ),
              HargaAkhir(
                  //menjadikan widget yang lebih kecil menggunakan extact widget
                  hasil: _hasil),
              Hemat(
                  //menjadikan widget yang lebih kecil menggunakan extact widget
                  hemat: _hemat),
              EnterButton(
                //menjadikan widget yang lebih kecil menggunakan extact widget
                hitungDiskon: _hitungDiskon,
              ),
              Container(
                margin: EdgeInsets.only(top: 30, bottom: 10),
                child: Text(
                  "Riwayat",
                  style: GoogleFonts.inter(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Riwayat(
                  //menjadikan widget yang lebih kecil menggunakan extact widget
                  listViewItem: listViewItem),
            ],
          ),
        ),
      ),
    );
  }
}
