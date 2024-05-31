import 'package:flutter/material.dart';
import 'package:landing_page/Components/svg_icon_component.dart';
import 'package:landing_page/Constants/pallete.dart';
import 'package:landing_page/Constants/string_constants.dart';
import 'package:landing_page/Mobile/Components/drawer_header_component.dart';
import 'package:landing_page/Mobile/Components/tabs_mobile_component.dart';
import 'package:url_launcher/url_launcher_string.dart';

class DrawerForMobileComponent extends StatefulWidget {
  const DrawerForMobileComponent({super.key});

  @override
  State<DrawerForMobileComponent> createState() => _DrawerForMobileComponentState();
}

class _DrawerForMobileComponentState extends State<DrawerForMobileComponent> {
  static const List<Color> colors = Pallete.socialMediaColors;

  Iterable keys = StringConstants.socialMedia.keys;
  Iterable values = StringConstants.socialMedia.values;

  static const heightSpace = SizedBox(
    height: 25,
  );

  onTap(String value) async {
    await launchUrlString(value);
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        children: [
          const DrawerHeaderComponent(),
          const SizedBox(
            height: 10,
          ),
          const TabsMobileComponent(
            text: 'Home',
            sizeBetween: 20,
            iconData: Icons.home,
            route: '/home',
          ),
          heightSpace,
          const TabsMobileComponent(
            text: 'Works',
            sizeBetween: 20,
            iconData: Icons.work,
            route: '/works',
          ),
          heightSpace,
          const TabsMobileComponent(
            text: 'Blog',
            sizeBetween: 20,
            iconData: Icons.book,
            route: '/blog',
          ),
          heightSpace,
          const TabsMobileComponent(
            text: 'About',
            sizeBetween: 20,
            iconData: Icons.person,
            route: '/about',
          ),
          heightSpace,
          const TabsMobileComponent(
            text: 'Contact',
            sizeBetween: 20,
            iconData: Icons.contact_mail,
            route: '/contact',
          ),
          heightSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(
              keys.length,
              (index) => SvgIconComponent(
                color: colors[index],
                size: 30,
                imagePath: 'assets/images/icons/${keys.elementAt(index).toLowerCase()}.svg',
                onTap: () => onTap(values.elementAt(index)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
