import 'package:flutter/material.dart';
import 'package:landing_page/Components/animated_card_Image_component.dart';
import 'package:landing_page/Components/sans_font_component.dart';
import 'package:landing_page/Constants/constant_strings.dart';

class WorksWebComponent extends StatelessWidget {
  const WorksWebComponent({
    super.key,
  });

  static const List<Widget> children = [
    Flexible(
      child: AnimatedCardImageComponent(
        imagePath: ConstantStrings.imageWebScreen,
        width: 500,
        height: 500,
      ),
    ),
    Flexible(
      child: SizedBox(
        height: 50,
      ),
    ),
    Flexible(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FittedBox(
            child: SansBold(
              text: ConstantStrings.portafolio,
              size: 30,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            width: 500,
            child: Sans(
              text: ConstantStrings.portafolioDescription,
            ),
          ),
        ],
      ),
    ),
  ];

  static const row = Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: children,
  );

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          SansBold(
            text: 'Works',
            size: 40,
          ),
          SizedBox(
            height: 50,
          ),
          row,
          SizedBox(
            height: 100,
          ),
        ],
      ),
    );
  }
}
