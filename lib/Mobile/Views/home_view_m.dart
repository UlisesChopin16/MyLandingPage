import 'package:flutter/material.dart';
import 'package:landing_page/Components/circle_avatar_component.dart';
import 'package:landing_page/Components/message_text_container_component.dart';
import 'package:landing_page/Components/sans_bold_component.dart';
import 'package:landing_page/Web/Components/contact_details_component.dart';

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
      height: height > 600 ? height : 600,
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatarComponent(
            radius: 137,
          ),
          MessageTextContainerComponent(
            text: 'Welcome, my name is...',
          ),
          SizedBox(
            height: 10,
          ),
          SansBoldComponent(
            text: 'Ulises Shie Sotelo \nChopin',
            size: 35,
          ),
          SizedBox(
            height: 10,
          ),
          SansBoldComponent(
            text: 'Flutter Developer',
            size: 30,
          ),
          SizedBox(
            height: 20,
          ),
          ContactDetailsComponent(),
        ],
      ),
    );
  }
}
