import 'package:flutter/material.dart';
import 'package:landing_page/Web/Components/tabbar_text_component.dart';

class TabBarComponent extends StatelessWidget implements PreferredSizeWidget {
  const TabBarComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: const Row(
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
          Spacer(
            flex: 8,
          ),
        ],
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(55.0);
}
