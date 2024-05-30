import 'package:flutter/material.dart';
import 'package:landing_page/Components/circle_avatar_component.dart';
import 'package:landing_page/Components/sans_bold_component.dart';
import 'package:landing_page/Components/svg_icon_text_component.dart';
import 'package:url_launcher/url_launcher_string.dart';

class DrawerForWebComponent extends StatefulWidget {
  const DrawerForWebComponent({super.key});

  @override
  State<DrawerForWebComponent> createState() => _DrawerForWebComponentState();
}

class _DrawerForWebComponentState extends State<DrawerForWebComponent> {
  List<Color> colors = [
    Colors.black,
    const Color(0xFF0762f7),
    Colors.pink,
  ];

  Map<String, String> socialMedia = {
    'Github': 'https://github.com/UlisesChopin16',
    'Facebook': 'https://www.facebook.com/ulises.sotelo.chopin3567',
    'Instagram': 'https://www.instagram.com/sotelochopin'
  };

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
          const SansBoldComponent(
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
              socialMedia.length,
              (index) => SvgIconTextComponent(
                text: socialMedia.keys.elementAt(index),
                animate: true,
                color: colors[index],
                size: 40,
                imagePath:
                    'assets/images/icons/${socialMedia.keys.elementAt(index).toLowerCase()}.svg',
                onTap: () => onTap(socialMedia.values.elementAt(index)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
