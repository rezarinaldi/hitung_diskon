import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Hemat extends StatelessWidget {
  const Hemat({
    Key key,
    @required double hemat, //parameter
  })  : _hemat = hemat,
        super(key: key);

  final double _hemat; //deklaras variabel

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 30,
        bottom: 30,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment
            .center, //mengatur posisi secara mendatar pada baris
        children: [
          Text(
            "Anda Hemat " + _hemat.toStringAsFixed(0),
            style: GoogleFonts.inter(
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
