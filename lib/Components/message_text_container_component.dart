import 'package:flutter/material.dart';
import 'package:landing_page/Components/sans_bold_component.dart';

class MessageTextContainerComponent extends StatelessWidget {

  final Color backgroundColor;
  final Color textColor;

  final String text;

  const MessageTextContainerComponent({
    super.key,
    required this.text,
    this.backgroundColor = Colors.deepPurple,
    this.textColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
          bottomRight: Radius.circular(20),
        )
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: SansBoldComponent(text: text,  color: textColor),
      )
    );
  }
}