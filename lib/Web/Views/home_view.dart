import 'package:flutter/material.dart';
import 'package:landing_page/Components/message_text_container_component.dart';
import 'package:landing_page/Components/sans_bold_component.dart';
import 'package:landing_page/Web/Components/circle_avatar_component.dart';
import 'package:landing_page/Web/Components/contact_details_component.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height - AppBar().preferredSize.height;

    return SizedBox(
      width: width,
      height: height > 400 ? height : 500,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MessageTextContainerComponent(
                text: 'Welcome, my name is...',
              ),
              SizedBox(height: 10,),
              SansBoldComponent(text: 'Ulises Shie Sotelo \nChopin', size: 55,),
              SizedBox(height: 10,),
              SansBoldComponent(text: 'Flutter Developer', size: 30,),
              SizedBox(height: 20,),
              ContactDetailsComponent(),
            ],
          ),
          CircleAvatarComponent(),
        ],
      ),
    );
  }
}