import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:landing_page/Components/sans_component.dart';

class IconAndTextComponent extends StatelessWidget {
  
  final Color color;

  final IconData iconData;

  final String text;

  const IconAndTextComponent({
    super.key,
    required this.iconData,
    required this.text,
    this.color = Colors.black
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(iconData),
        const SizedBox(width: 10,),
        SansComponent(text: text, color: color,),
      ],
    );
  }
}