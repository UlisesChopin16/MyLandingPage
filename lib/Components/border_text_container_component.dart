import 'package:flutter/material.dart';
import 'package:landing_page/Components/sans_font_component.dart';

class BorderTextContainerComponent extends StatelessWidget {
  final String text;

  const BorderTextContainerComponent({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.deepPurple,
          width: 2,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      padding: const EdgeInsets.all(7),
      child: Sans(text: text),
    );
  }
}
