import 'package:flutter/material.dart';
import 'package:landing_page/Components/border_text_container_component.dart';

class RowOfSkillsComponent extends StatelessWidget {
  const RowOfSkillsComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        BorderTextContainerComponent(text: 'Flutter'),
        SizedBox(width: 7,),
        BorderTextContainerComponent(text: 'Firebase'),
        SizedBox(width: 7,),
        BorderTextContainerComponent(text: 'MariaDB'),
        SizedBox(width: 7,),
        BorderTextContainerComponent(text: 'MySQL'),
        SizedBox(width: 7,),
        BorderTextContainerComponent(text: 'Android'),
        SizedBox(width: 7,),
        BorderTextContainerComponent(text: 'Web'),
        SizedBox(width: 7,),
        BorderTextContainerComponent(text: 'Ios'),
        SizedBox(width: 7,),
        BorderTextContainerComponent(text: 'Windows'),
      ],
    );
  }
}