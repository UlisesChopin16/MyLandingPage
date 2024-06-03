import 'package:flutter/material.dart';
import 'package:landing_page/Components/animated_card_Image_component.dart';
import 'package:landing_page/Components/sans_font_component.dart';
import 'package:landing_page/Constants/constant_strings.dart';

class WorksMobileComponent extends StatelessWidget {
  const WorksMobileComponent({
    super.key,
  });
  static const List<Widget> children = [
    AnimatedCardImageComponent(
      imagePath: ConstantStrings.imageAppScreen,
      height: 400,
    ),
    SizedBox(
      height: 55,
    ),
    Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SansBold(
          text: ConstantStrings.portafolio,
          size: 35,
        ),
        SizedBox(
          height: 10,
        ),
        Sans(text: ConstantStrings.portafolioDescription),
      ],
    ),
  ];

  static const row = Column(
    crossAxisAlignment: CrossAxisAlignment.center,
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
          row,
          SizedBox(
            height: 100,
          ),
        ],
      ),
    );
  }
}
