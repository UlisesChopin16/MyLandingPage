import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:landing_page/Components/sans_component.dart';

class TextFormComponent extends StatelessWidget {

  final double width;

  final int maxLines;

  final String labelText;
  final String hintText;

  final String? Function(String?)? validator;

  final TextEditingController? controller;


  const TextFormComponent({
    super.key,
    required this.labelText,
    this.validator,
    this.hintText = '',
    this.width = 300,
    this.maxLines = 1,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SansComponent(text: labelText,),
        const SizedBox(height: 5,),
        SizedBox(
          width: width,
          child: TextFormField(
            controller: controller,
            maxLines: maxLines,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: validator,
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: GoogleFonts.poppins(fontSize: 14),
              border: outlineInputBorder(),
              enabledBorder: outlineInputBorder(),
              focusedBorder: outlineInputBorder(color: Colors.deepPurpleAccent, width: 3.0),
              errorBorder: outlineInputBorder(color: Colors.red, width: 3.0),
            ),
          ),
        )
      ],
    );
  }

  outlineInputBorder({final Color color = Colors.deepPurple, final double width = 1.0}) {
    return OutlineInputBorder(
      borderSide: BorderSide(color: color, width: width),
      borderRadius: BorderRadius.circular(10),
    );
  }
}