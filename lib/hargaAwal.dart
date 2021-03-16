import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class HargaAwal extends StatelessWidget {
  const HargaAwal({
    Key key,
    @required this.hargaController, //parameter
  }) : super(key: key);

  final TextEditingController hargaController; //deklarasi Controller

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      child: Row(
        children: [
          Expanded(
            child: Text(
              "Harga Awal",
              style: GoogleFonts.inter(
                fontSize: 16,
              ),
            ),
          ),
          Expanded(
            child: TextFormField(
              controller: hargaController,
              decoration: InputDecoration(
                hintText: "0",
              ),
              textAlign: TextAlign.end,
              style: GoogleFonts.inter(
                fontSize: 16,
              ),
              keyboardType:
                  TextInputType.number, //agar keyboard hanya untuk angka
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly
              ],
            ),
          )
        ],
      ),
    );
  }
}
