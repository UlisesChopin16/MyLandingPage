import 'package:flutter/material.dart';

class MobileTabBarComponent extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const MobileTabBarComponent({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      title: Text(title),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(55.0);
}