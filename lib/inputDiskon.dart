import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class InputDiskon extends StatelessWidget {
  const InputDiskon({
    //konstruktor
    Key key,
    @required this.diskonController, //parameter
  }) : super(key: key); //inisialisasi sebagai subclass main

  final TextEditingController diskonController; //deklarasi controller

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      child: Row(
        //menampung widget di dalam container
        //creates a horizontal array of children
        children: [
          Expanded(
            child: Text(
              "Diskon",
              style: GoogleFonts.inter(
                fontSize: 16,
              ),
            ),
          ),
          Expanded(
            child: TextFormField(
              //untuk inputan
              controller: diskonController, //untuk menerima inputan user
              // onChanged: diskonController,
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
