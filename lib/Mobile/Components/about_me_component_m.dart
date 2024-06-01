import 'package:flutter/material.dart';
import 'package:landing_page/Components/image_asset_component.dart';
import 'package:landing_page/Components/row_of_skills_component.dart';
import 'package:landing_page/Components/sans_font_component.dart';
import 'package:landing_page/Constants/constant_strings.dart';

class AboutMeComponentM extends StatelessWidget {
  const AboutMeComponentM({super.key});

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
              text: ConstantStrings.aboutMe,
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
                  text: ConstantStrings.aboutMeDescription,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 20,
                ),
                RowOfSkillsComponent(),
              ],
            ),
            ImageAssetComponent(
              pathImage: ConstantStrings.aboutImage,
              width: 400,
              height: 400,
            ),
          ],
        ),
      ),
    );
  }
}
