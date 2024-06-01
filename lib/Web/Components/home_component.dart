import 'package:flutter/material.dart';
import 'package:landing_page/Components/circle_avatar_component.dart';
import 'package:landing_page/Components/contact_details_component.dart';
import 'package:landing_page/Components/message_text_container_component.dart';
import 'package:landing_page/Components/sans_font_component.dart';
import 'package:landing_page/Constants/constant_strings.dart';

class HomeComponent extends StatelessWidget {
  const HomeComponent({
    super.key,
  });

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
                text: ConstantStrings.welcome,
              ),
              SizedBox(
                height: 10,
              ),
              SansBold(
                text: ConstantStrings.appName,
                size: 55,
              ),
              SizedBox(
                height: 10,
              ),
              SansBold(
                text: ConstantStrings.developer,
                size: 30,
              ),
              SizedBox(
                height: 20,
              ),
              ContactDetailsComponent(),
            ],
          ),
          CircleAvatarComponent(
            radius: 147,
          ),
        ],
      ),
    );
  }
}
