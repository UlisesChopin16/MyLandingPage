import 'package:flutter/material.dart';
import 'package:landing_page/Components/border_text_container_component.dart';

class RowOfSkillsComponent extends StatelessWidget {
  const RowOfSkillsComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Wrap(
      spacing: 7,
      runSpacing: 7,
      children: [
        BorderTextContainerComponent(text: 'Flutter'),
        BorderTextContainerComponent(text: 'Firebase'),
        BorderTextContainerComponent(text: 'MariaDB'),
        BorderTextContainerComponent(text: 'MySQL'),
        BorderTextContainerComponent(text: 'Android'),
        BorderTextContainerComponent(text: 'Web'),
        BorderTextContainerComponent(text: 'Ios'),
        BorderTextContainerComponent(text: 'Windows'),
      ],
    );
  }
}