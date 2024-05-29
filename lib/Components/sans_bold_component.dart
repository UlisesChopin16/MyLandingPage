import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SansBoldComponent extends StatelessWidget {
  
  /// The color of the text, default is black
  final Color color;

  /// The size of the text, default is 16
  final double size;

  /// The text to be displayed
  final String text;

  const SansBoldComponent({
    super.key,
    required this.text,
    this.size = 16,
    this.color = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.openSans(
        color: color,
        fontSize: size,
        fontWeight: FontWeight.bold,
      )
    );
  }
}