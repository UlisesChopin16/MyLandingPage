import 'package:flutter/material.dart';
import 'package:landing_page/Components/image_asset_component.dart';
import 'package:landing_page/Components/sans_font_component.dart';
import 'package:landing_page/Components/row_of_skills_component.dart';

class AboutMeViewM extends StatelessWidget {
  const AboutMeViewM({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height - AppBar().preferredSize.height;

    return SizedBox(
      width: width,
      height: height > 750 ? height : 750,
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SansBold(
              text: 'About Me',
              size: 40,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                SizedBox(
                  height: 20,
                ),
                Sans(
                  text:
                      'Hello! I\'m Ulises Shie Sotelo Chopin, I specialize in fllutter development. I strive to create and ensure, a greate user expirience with beatiful astounding performance with state of the art security for Android, Ios, Web, Mac, Linux and Windows',
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 20,
                ),
                RowOfSkillsComponent(),
              ],
            ),
            ImageAssetComponent(
              pathImage: 'assets/images/web.jpg',
              width: 400,
              height: 400,
            ),
          ],
        ),
      ),
    );
  }
}
