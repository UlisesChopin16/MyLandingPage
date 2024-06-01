import 'package:flutter/material.dart';
import 'package:landing_page/Components/icon_and_text_component.dart';

class TabsMobileComponent extends StatelessWidget {
  final String text;

  /// the iconData is the icon that will be displayed in the button
  final IconData iconData;

  /// the space between the icon and the text
  /// for default the size is 10
  final double sizeBetween;

  final void Function() onPressed;

  const TabsMobileComponent({
    super.key,
    required this.text,
    required this.iconData,
    required this.onPressed,
    this.sizeBetween = 10,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: MaterialButton(
        onPressed: onPressed,
        elevation: 15,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.only(left: 25),
        height: 50,
        minWidth: 200,
        color: Colors.black,
        child: Align(
          alignment: Alignment.centerLeft,
          child: IconAndTextComponent(
            text: text,
            iconData: iconData,
            sizeBetween: sizeBetween,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
