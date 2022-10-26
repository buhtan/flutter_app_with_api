import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:google_fonts/google_fonts.dart';

class Constants {
  final String url = 'https://6357eadb2712d01e141360dc.mockapi.io/users';
  final String homeAppbar = 'Home';
  final String detailAppbar = 'Detail';

  Text myButtonText() {
    return Text(
      'Detail',
      style: Constants.myNewFontBlue,
    );
  }

  final Color cardColors = Colors.black38;
  final EdgeInsets cardPadding = const EdgeInsets.all(10);

  final String title = 'Api with proje';
  static String lormDetail = lorem(paragraphs: 2, words: 80);
  static var myNewFontWhite = GoogleFonts.alata(
      textStyle: const TextStyle(color: Colors.white, fontSize: 18));

  static var myNewFontBlue =
      GoogleFonts.alata(textStyle: const TextStyle(color: Colors.blue, fontSize: 20));
}
