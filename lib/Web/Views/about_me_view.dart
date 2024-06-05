import 'package:flutter/material.dart';
import 'package:landing_page/Components/animated_card_Image_component.dart';
import 'package:landing_page/Components/circle_avatar_component.dart';
import 'package:landing_page/Components/image_asset_component.dart';
import 'package:landing_page/Components/row_of_skills_component.dart';
import 'package:landing_page/Components/sans_font_component.dart';
import 'package:landing_page/Constants/constant_strings.dart';
import 'package:landing_page/Web/Components/drawer_for_web_component.dart';
import 'package:landing_page/Web/Components/tab_bar_component.dart';

class AboutMeView extends StatefulWidget {
  const AboutMeView({super.key});

  @override
  State<AboutMeView> createState() => _AboutMeViewState();
}

class _AboutMeViewState extends State<AboutMeView> {
  final ScrollController _scrollController = ScrollController();

  static const Widget rowWebDev = Padding(
    padding: EdgeInsets.symmetric(horizontal: 30.0),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Flexible(
          child: AnimatedCardImageComponent(
            imagePath: ConstantStrings.webImage,
            width: 300,
            height: 300,
          ),
        ),
        Flexible(
          child: SizedBox(
            height: 50,
          ),
        ),
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 35,
              ),
              FittedBox(
                child: SansBold(
                  text: ConstantStrings.webDev,
                  size: 30,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 500,
                child: Sans(
                  text: ConstantStrings.webDevDescription,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );

  static const Widget rowAppDev = Padding(
    padding: EdgeInsets.symmetric(horizontal: 30.0),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 35,
              ),
              FittedBox(
                child: SansBold(
                  text: ConstantStrings.appDev,
                  size: 30,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 500,
                child: Sans(
                  text: ConstantStrings.appDevDescription,
                ),
              ),
            ],
          ),
        ),
        Flexible(
          child: SizedBox(
            height: 50,
          ),
        ),
        Flexible(
          child: AnimatedCardImageComponent(
            imagePath: ConstantStrings.appImage,
            width: 300,
            height: 300,
            reverse: true,
          ),
        ),
      ],
    ),
  );

  static const Widget rowBackDev = Padding(
    padding: EdgeInsets.symmetric(horizontal: 30.0),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Flexible(
          child: AnimatedCardImageComponent(
            imagePath: '',
            child: SizedBox(
              width: 300,
              height: 300,
              child: Wrap(
                alignment: WrapAlignment.spaceEvenly,
                crossAxisAlignment: WrapCrossAlignment.center,
                runAlignment: WrapAlignment.spaceEvenly,
                runSpacing: 10,
                spacing: 10,
                children: [
                  ImageAssetComponent(
                    pathImage: ConstantStrings.mariaDBImage,
                    width: 140,
                    height: 140,
                  ),
                  ImageAssetComponent(
                    pathImage: ConstantStrings.mysqlImage,
                    width: 140,
                    height: 140,
                  ),
                  ImageAssetComponent(
                    pathImage: ConstantStrings.firebaseImage,
                    width: 200,
                    height: 150,
                  ),
                ],
              ),
            ),
          ),
        ),
        Flexible(
          child: SizedBox(
            height: 50,
          ),
        ),
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 35,
              ),
              FittedBox(
                child: SansBold(
                  text: ConstantStrings.backDev,
                  size: 30,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 500,
                child: Sans(
                  text: ConstantStrings.backDevDescription,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );

  static const List<Widget> children = [
    rowWebDev,
    SizedBox(
      height: 100,
    ),
    rowAppDev,
    SizedBox(
      height: 100,
    ),
    rowBackDev,
    SizedBox(
      height: 50,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const TabBarComponent(),
      drawer: const DrawerForWebComponent(),
      body: Scrollbar(
        controller: _scrollController,
        thumbVisibility: true,
        trackVisibility: true,
        child: ListView(
          controller: _scrollController,
          padding: const EdgeInsets.only(bottom: 50.0),
          children: [
            SizedBox(
              height: 700,
              width: width,
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 35.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
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
                    ),
                    Flexible(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(
                            height: 40,
                          ),
                          CircleAvatarComponent(
                            radius: 147,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Center(
              child: SansBold(
                text: ConstantStrings.whatIDo,
                size: 40,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              width: width,
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: children,
              ),
            )
          ],
        ),
      ),
    );
  }
}
