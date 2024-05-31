import 'package:flutter/material.dart';
import 'package:landing_page/Components/circle_avatar_component.dart';
import 'package:landing_page/Components/contact_details_component.dart';
import 'package:landing_page/Components/message_text_container_component.dart';
import 'package:landing_page/Components/sans_font_component.dart';

class HomeViewM extends StatefulWidget {
  const HomeViewM({super.key});

  @override
  State<HomeViewM> createState() => _HomeViewMState();
}

class _HomeViewMState extends State<HomeViewM> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height - AppBar().preferredSize.height;

    return SizedBox(
      width: width,
      height: height > 650 ? height : 650,
      child: const Padding(
        padding: EdgeInsets.only(left: 20.0),
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
                  text: 'Welcome, my name is...',
                ),
                SansBold(
                  text: 'Ulises Shie Sotelo\nChopin',
                  size: 40,
                ),
                Sans(
                  text: 'Flutter Developer',
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
