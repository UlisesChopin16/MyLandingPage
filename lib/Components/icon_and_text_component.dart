import 'package:flutter/material.dart';
import 'package:landing_page/Components/sans_font_component.dart';

class IconAndTextComponent extends StatelessWidget {
  final Color color;

  /// the space between the icon and the text
  /// for default the size is 10
  final double sizeBetween;

  final IconData iconData;

  final String text;

  const IconAndTextComponent({
    super.key,
    required this.iconData,
    required this.text,
    this.color = Colors.black,
    this.sizeBetween = 10,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          iconData,
          color: color,
        ),
        SizedBox(
          width: sizeBetween,
        ),
        Sans(
          text: text,
          color: color,
        ),
      ],
    );
  }
}
