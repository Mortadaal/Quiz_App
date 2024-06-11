import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StayledText extends StatelessWidget {
  const StayledText(this.text, {super.key});
  final String text;
  @override
  Widget build(context) {
    return Text(
      text,
      style:  GoogleFonts.lato(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: Colors.white),
    );
  }
}
