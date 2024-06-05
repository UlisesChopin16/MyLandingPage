import 'package:flutter/material.dart';
import 'package:landing_page/Components/circle_avatar_component.dart';
import 'package:landing_page/Components/contact_details_component.dart';
import 'package:landing_page/Components/message_text_container_component.dart';
import 'package:landing_page/Components/sans_font_component.dart';
import 'package:landing_page/Constants/constant_strings.dart';

class HomeComponentM extends StatefulWidget {
  const HomeComponentM({super.key});

  @override
  State<HomeComponentM> createState() => _HomeComponentMState();
}

class _HomeComponentMState extends State<HomeComponentM> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height - AppBar().preferredSize.height;

    return SizedBox(
      width: width,
      height: height > 650 ? height : 650,
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                CircleAvatarComponent(
                  radius: 137,
                ),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MessageTextContainerComponent(
                  text: ConstantStrings.welcome,
                ),
                SansBold(
                  text: ConstantStrings.appName,
                  size: 40,
                ),
                Sans(
                  text: ConstantStrings.developer,
                  size: 20,
                ),
                SizedBox(
                  height: 15,
                ),
                ContactDetailsComponent()
              ],
            ),
          ],
        ),
      ),
    );
  }
}
