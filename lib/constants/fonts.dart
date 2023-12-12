import 'package:alleviz/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle t1() {
  return GoogleFonts.lato(textStyle: TextStyle(color: wh));
}

TextStyle t2() {
  return GoogleFonts.lato(textStyle: TextStyle(color: Colors.black));
}

TextStyle bold() {
  return TextStyle(fontWeight: FontWeight.bold);
}

TextStyle small() {
  return TextStyle(fontSize: 12);
}

TextStyle lato() {
  return GoogleFonts.lato();
}
