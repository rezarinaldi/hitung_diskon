import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HargaAkhir extends StatelessWidget {
  const HargaAkhir({Key key, @required double hasil})
      : _hasil = hasil,
        super(key: key);

  final double _hasil; //deklarasi paramteter yang terdapat di konstruktor

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(8, 20, 8, 8), //mengatur jarak antar widget
      child: Row(
        //menampung widget di dalam container
        mainAxisAlignment: MainAxisAlignment
            .spaceBetween, //mengatur posisi secara mendatar pada baris
        children: [
          Expanded(
            child: Text(
              "Harga Akhir",
              style: GoogleFonts.inter(
                fontSize: 16,
              ),
            ),
          ),
          Expanded(
            //memenuhi ruang kosong
            child: Text(
              _hasil.toStringAsFixed(
                  0), //menampilkan hasil dengan memanggil variabel
              textAlign: TextAlign.right,
              style: GoogleFonts.inter(
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
