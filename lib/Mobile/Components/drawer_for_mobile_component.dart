import 'package:flutter/material.dart';
import 'package:landing_page/Components/svg_icon_component.dart';
import 'package:landing_page/Constants/constant_strings.dart';
import 'package:landing_page/Constants/pallete.dart';
import 'package:landing_page/Mobile/Components/drawer_header_component.dart';
import 'package:landing_page/Mobile/Components/tabs_mobile_component.dart';
import 'package:landing_page/tabbar_functions.dart';
import 'package:url_launcher/url_launcher_string.dart';

class DrawerForMobileComponent extends StatefulWidget {
  const DrawerForMobileComponent({super.key});

  @override
  State<DrawerForMobileComponent> createState() => _DrawerForMobileComponentState();
}

class _DrawerForMobileComponentState extends State<DrawerForMobileComponent> {
  static const List<Color> colors = Pallete.socialMediaColors;

  Iterable keys = ConstantStrings.socialMedia.keys;
  Iterable values = ConstantStrings.socialMedia.values;

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
            text: ConstantStrings.home,
            sizeBetween: 20,
            iconData: Icons.home,
            onPressed: TabbarFunctions.homeTab,
          ),
          heightSpace,
          const TabsMobileComponent(
            text: ConstantStrings.experience,
            sizeBetween: 20,
            iconData: Icons.work,
            onPressed: TabbarFunctions.experienceTab,
          ),
          heightSpace,
          const TabsMobileComponent(
            text: ConstantStrings.blog,
            sizeBetween: 20,
            iconData: Icons.book,
            onPressed: TabbarFunctions.blogTab,
          ),
          heightSpace,
          const TabsMobileComponent(
            text: ConstantStrings.aboutMe,
            sizeBetween: 20,
            iconData: Icons.person,
            onPressed: TabbarFunctions.aboutTab,
          ),
          heightSpace,
          const TabsMobileComponent(
            text: ConstantStrings.contactMe,
            sizeBetween: 20,
            iconData: Icons.contact_mail,
            onPressed: TabbarFunctions.contactTab,
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
          heightSpace,
          heightSpace,
        ],
      ),
    );
  }
}
