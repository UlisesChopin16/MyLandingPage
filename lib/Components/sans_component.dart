import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SansComponent extends StatelessWidget {

  /// The color of the text, default is black
  final Color color;

  /// The size of the text, default is 16
  final double size;

  /// The text to be displayed
  final String text;

  final TextAlign textAlign;

  const SansComponent({
    super.key,
    required this.text,
    this.size = 16,
    this.color = Colors.black,
    this.textAlign = TextAlign.left,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: GoogleFonts.openSans(
        color: color,
        fontSize: size,
      )
    );
  }
}