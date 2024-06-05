import 'package:flutter/material.dart';
import 'package:landing_page/Components/animated_card_Image_component.dart';
import 'package:landing_page/Components/circle_avatar_component.dart';
import 'package:landing_page/Components/image_asset_component.dart';
import 'package:landing_page/Components/row_of_skills_component.dart';
import 'package:landing_page/Components/sans_font_component.dart';
import 'package:landing_page/Constants/constant_strings.dart';
import 'package:landing_page/Mobile/Components/drawer_for_mobile_component.dart';
import 'package:landing_page/Mobile/Components/mobile_tab_bar_component.dart';

class AboutMeViewM extends StatefulWidget {
  const AboutMeViewM({super.key});

  @override
  State<AboutMeViewM> createState() => _AboutMeViewMState();
}

class _AboutMeViewMState extends State<AboutMeViewM> {
  static const List<Widget> children = [
    AnimatedCardImageComponent(
      imagePath: ConstantStrings.webImage,
      width: 200,
      height: 200,
    ),
    SizedBox(
      height: 35,
    ),
    SansBold(text: ConstantStrings.webDev, size: 20),
    SizedBox(
      height: 10,
    ),
    Sans(text: ConstantStrings.webDevDescription),
    SizedBox(
      height: 40,
    ),
    AnimatedCardImageComponent(
      imagePath: ConstantStrings.appImage,
      width: 200,
      height: 150,
    ),
    SizedBox(
      height: 35,
    ),
    SansBold(text: ConstantStrings.appDev, size: 20),
    SizedBox(
      height: 10,
    ),
    Sans(text: ConstantStrings.appDevDescription),
    SizedBox(
      height: 40,
    ),
    AnimatedCardImageComponent(
      imagePath: '',
      child: SizedBox(
        width: 200,
        child: Wrap(
          alignment: WrapAlignment.spaceEvenly,
          crossAxisAlignment: WrapCrossAlignment.center,
          runSpacing: 10,
          children: [
            ImageAssetComponent(
              pathImage: ConstantStrings.mariaDBImage,
              width: 80,
              height: 80,
            ),
            ImageAssetComponent(
              pathImage: ConstantStrings.mysqlImage,
              width: 70,
              height: 80,
            ),
            ImageAssetComponent(
              pathImage: ConstantStrings.firebaseImage,
              width: 100,
              height: 80,
            ),
          ],
        ),
      ),
    ),
    SizedBox(
      height: 35,
    ),
    SansBold(text: ConstantStrings.backDev, size: 20),
    SizedBox(
      height: 10,
    ),
    Sans(text: ConstantStrings.backDevDescription),
    SizedBox(
      height: 50,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const MobileTabBarComponent(
        title: 'About Me',
      ),
      drawer: const DrawerForMobileComponent(),
      body: ListView(
        padding: const EdgeInsets.only(bottom: 50.0),
        children: const [
          Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 35.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 40,
                      ),
                      CircleAvatarComponent(
                        radius: 137,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SansBold(
                        text: ConstantStrings.aboutMe,
                        size: 40,
                      ),
                      Sans(
                        text: ConstantStrings.aboutMeDescription,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      RowOfSkillsComponent(),
                    ],
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  Center(
                    child: SansBold(
                      text: ConstantStrings.whatIDo,
                      size: 40,
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: children,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
