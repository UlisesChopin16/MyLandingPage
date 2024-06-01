import 'package:flutter/material.dart';
import 'package:landing_page/Components/sans_font_component.dart';
import 'package:landing_page/Constants/constant_strings.dart';
import 'package:landing_page/Web/Components/row_of_works_component.dart';

class ExperienceComponent extends StatefulWidget {
  const ExperienceComponent({super.key});

  @override
  State<ExperienceComponent> createState() => _ExperienceComponentState();
}

class _ExperienceComponentState extends State<ExperienceComponent> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height - AppBar().preferredSize.height;
    return SizedBox(
      height: height > 700 ? height : 700,
      width: width,
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(
            child: Padding(
              padding: EdgeInsets.only(bottom: 20.0),
              child: SansBold(
                text: ConstantStrings.whatIDo,
                size: 40,
              ),
            ),
          ),
          RowOfWorksComponent()
        ],
      ),
    );
  }
}
