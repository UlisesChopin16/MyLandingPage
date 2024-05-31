import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:landing_page/Components/icon_and_text_component.dart';

class TabsMobileComponent extends StatelessWidget {
  final String text;

  /// the route is the path that the button will take when pressed
  final String route;

  /// the iconData is the icon that will be displayed in the button
  final IconData iconData;

  /// the space between the icon and the text
  /// for default the size is 10
  final double sizeBetween;

  const TabsMobileComponent({
    super.key,
    required this.text,
    required this.iconData,
    required this.route,
    this.sizeBetween = 10,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: MaterialButton(
        onPressed: () {
          context.go(route);
        },
        elevation: 15,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.only(left: 25),
        height: 50,
        minWidth: 200,
        color: Colors.black,
        child: IconAndTextComponent(
          text: text,
          iconData: iconData,
          sizeBetween: sizeBetween,
          color: Colors.white,
        ),
      ),
    );
  }
}
