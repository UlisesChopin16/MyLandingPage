import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:landing_page/Web/Components/tabbar_text_component.dart';
import 'package:landing_page/tabbar_functions.dart';

class ListOfTabBarsComponent extends StatelessWidget {
  const ListOfTabBarsComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        const Spacer(),
        TabbarTextComponent(
          text: 'Home',
          onTap: () {
            TabbarFunctions.homeTab(context);
          },
        ),
        const Spacer(),
        const TabbarTextComponent(
          text: 'Experience',
        ),
        const Spacer(),
        const TabbarTextComponent(
          text: 'Blog',
        ),
        const Spacer(),
        const TabbarTextComponent(
          text: 'About',
        ),
        const Spacer(),
        TabbarTextComponent(
          text: 'Contact',
          onTap: () {
            context.go('/contact-me');
          },
        ),
        const Spacer(
          flex: 8,
        ),
      ],
    );
  }
}
