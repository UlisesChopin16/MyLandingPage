import 'package:flutter/material.dart';
import 'package:landing_page/Components/circle_avatar_component.dart';
import 'package:landing_page/Components/sans_font_component.dart';
import 'package:landing_page/Components/svg_icon_text_component.dart';
import 'package:landing_page/Constants/pallete.dart';
import 'package:landing_page/Constants/string_constants.dart';
import 'package:url_launcher/url_launcher_string.dart';

class DrawerForWebComponent extends StatefulWidget {
  const DrawerForWebComponent({super.key});

  @override
  State<DrawerForWebComponent> createState() => _DrawerForWebComponentState();
}

class _DrawerForWebComponentState extends State<DrawerForWebComponent> {
  Iterable keys = StringConstants.socialMedia.keys;
  Iterable values = StringConstants.socialMedia.values;

  List<Color> colors = Pallete.socialMediaColors;

  onTap(String value) async {
    await launchUrlString(value);
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CircleAvatarComponent(radius: 100),
          const SizedBox(
            height: 20,
          ),
          const SansBold(
            text: 'Ulises Shie Sotelo Chopin',
            size: 30,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(
              keys.length,
              (index) => SvgIconTextComponent(
                text: keys.elementAt(index),
                animate: true,
                color: colors[index],
                size: 40,
                imagePath: 'assets/images/icons/${keys.elementAt(index).toLowerCase()}.svg',
                onTap: () => onTap(values.elementAt(index)),
              ),
            ),
          )
        ],
      ),
    );
  }
}