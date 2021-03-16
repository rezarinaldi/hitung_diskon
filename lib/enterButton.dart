import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EnterButton extends StatelessWidget {
  const EnterButton({
    Key key,
    @required this.hitungDiskon, //parameter
  }) : super(key: key);

  final Function hitungDiskon; //deklarasi fungsi

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, //agar lebar button penuh
      height: 50,
      child: ElevatedButton(
        //widget untuk membuat button
        onPressed: hitungDiskon, //agar button dapat ditekan
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.pressed))
                return Theme.of(context).colorScheme.primary.withOpacity(0.5);
              return null; // Use the component's default.
            },
          ),
        ),
        child: Text(
          "Hitung",
          style: GoogleFonts.inter(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
