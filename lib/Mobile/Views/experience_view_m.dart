import 'package:flutter/material.dart';
import 'package:landing_page/Components/sans_font_component.dart';
import 'package:landing_page/Mobile/Components/column_of_works_component.dart';

class ExperienceViewM extends StatefulWidget {
  const ExperienceViewM({super.key});

  @override
  State<ExperienceViewM> createState() => _ExperienceViewMState();
}

class _ExperienceViewMState extends State<ExperienceViewM> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height - AppBar().preferredSize.height;
    return SizedBox(
      height: height > 850 ? height : 850,
      width: width,
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Padding(
                padding: EdgeInsets.only(bottom: 20.0),
                child: SansBold(
                  text: 'What I Do',
                  size: 40,
                ),
              ),
            ),
            Expanded(child: ColumnOfWorksComponent())
          ],
        ),
      ),
    );
  }
}
