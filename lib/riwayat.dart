import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Riwayat extends StatelessWidget {
  const Riwayat({
    Key key,
    @required this.listViewItem, //parameter
  }) : super(key: key); //inisialisasi sebagai subclass main

  final List<String> listViewItem; //deklarasi variabel array

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: listViewItem.map(
          (String value) {
            //menampilkan hasil listViewItem
            return Container(
              margin: EdgeInsets.all(10),
              child: Text(
                value,
                style: GoogleFonts.inter(
                  fontSize: 15,
                ),
              ),
            );
          },
        ).toList(), //membuat list dari listViewItem yang berurutan
      ),
    );
  }
}
