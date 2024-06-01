import 'package:flutter/material.dart';
import 'package:landing_page/Web/Components/list_of_tab_bars_component.dart';

class TabBarComponent extends StatelessWidget implements PreferredSizeWidget {
  const TabBarComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: const ListOfTabBarsComponent(),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(55.0);
}
