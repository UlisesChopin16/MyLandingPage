import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TabbarTextComponent extends StatefulWidget {
  final String text;
  final double? fontSize;
  final void Function()? onTap;
  const TabbarTextComponent({
    super.key,
    required this.text,
    this.fontSize,
    this.onTap,
  });

  @override
  State<TabbarTextComponent> createState() => _TabbarTextComponentState();
}

class _TabbarTextComponentState extends State<TabbarTextComponent> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: MouseRegion(
        onEnter: (event) {
          setState(() {
            isSelected = true;
          });
        },
        onExit: (event) {
          setState(() {
            isSelected = false;
          });
        },
        child: AnimatedDefaultTextStyle(
          duration: const Duration(milliseconds: 150),
          curve: Curves.easeInOut,
          style: isSelected
              ? GoogleFonts.roboto(
                  fontSize: widget.fontSize ?? 24,
                  color: Colors.transparent,
                  shadows: <Shadow>[
                    const Shadow(
                      color: Colors.deepPurple,
                      offset: Offset(0, -2),
                      // blurRadius: 10,
                    ),
                  ],
                  decoration: TextDecoration.underline,
                  decorationThickness: 2,
                  decorationColor: Colors.deepPurple,
                )
              : GoogleFonts.roboto(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: widget.fontSize == null ? 20 : (widget.fontSize! - 4),
                ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10.0,
              horizontal: 10.0,
            ),
            child: Text(
              widget.text,
            ),
          ),
        ),
      ),
    );
  }
}
