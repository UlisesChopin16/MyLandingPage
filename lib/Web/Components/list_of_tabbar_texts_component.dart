import 'package:flutter/material.dart';
import 'package:landing_page/Web/Components/tabbar_text_component.dart';

class ListOfTabbarTextsComponent extends StatefulWidget {
  const ListOfTabbarTextsComponent({super.key});

  @override
  State<ListOfTabbarTextsComponent> createState() => _ListOfTabbarTextsComponentState();
}

class _ListOfTabbarTextsComponentState extends State<ListOfTabbarTextsComponent> {
  @override
  Widget build(BuildContext context) {
    return const Row(
      children: <Widget>[
        Spacer(),
        TabbarTextComponent(text: 'Home'),
        Spacer(),
        TabbarTextComponent(text: 'Works'),
        Spacer(),
        TabbarTextComponent(text: 'Blog'),
        Spacer(),
        TabbarTextComponent(text: 'About'),
        Spacer(),
        TabbarTextComponent(text: 'Contact'),
        Spacer(flex: 8,),
      ],
    );
  }
}