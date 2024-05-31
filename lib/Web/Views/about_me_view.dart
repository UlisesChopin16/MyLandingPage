import 'package:flutter/material.dart';
import 'package:landing_page/Components/image_asset_component.dart';
import 'package:landing_page/Components/sans_font_component.dart';
import 'package:landing_page/Web/Components/row_of_skills_component.dart';

class AboutMeView extends StatelessWidget {
  const AboutMeView({super.key});

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
              ImageAssetComponent(
                pathImage: 'assets/images/web.jpg',
                width: 400,
              ),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SansBold(
                      text: 'About Me',
                      size: 40,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Sans(
                      text:
                          'Hello! I\'m Ulises Shie Sotelo Chopin, I specialize in fllutter development.',
                    ),
                    Sans(
                      text:
                          'I strive to create and ensure, a greate user expirience with beatiful astounding performance ',
                    ),
                    Sans(
                      text:
                          'with state of the art security for Android, Ios, Web, Mac, Linux and Windows',
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
