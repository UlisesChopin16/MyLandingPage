import 'package:flutter/material.dart';
import 'package:landing_page/Components/image_asset_component.dart';
import 'package:landing_page/Components/row_of_skills_component.dart';
import 'package:landing_page/Components/sans_font_component.dart';
import 'package:landing_page/Constants/constant_strings.dart';

class AboutMeComponent extends StatelessWidget {
  const AboutMeComponent({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height - AppBar().preferredSize.height;

    return SizedBox(
      height: height > 500 ? height : 500,
      width: width,
      child: const Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                child: ImageAssetComponent(
                  pathImage: ConstantStrings.aboutImage,
                  width: 400,
                  height: 400,
                ),
              ),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SansBold(
                      text: ConstantStrings.aboutMe,
                      size: 40,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Sans(
                      text: ConstantStrings.aboutMeDescription,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    RowOfSkillsComponent(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
