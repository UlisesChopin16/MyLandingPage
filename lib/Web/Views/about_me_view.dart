import 'package:flutter/material.dart';
import 'package:landing_page/Components/border_text_container_component.dart';
import 'package:landing_page/Components/sans_bold_component.dart';
import 'package:landing_page/Components/sans_component.dart';
import 'package:landing_page/Web/Components/row_of_skills_component.dart';

class AboutMeView extends StatelessWidget {
  const AboutMeView({super.key});

  @override
  Widget build(BuildContext context) {
    
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height - AppBar().preferredSize.height;

    return SizedBox(
      height: height,
      width: width,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/images/web.jpg', width: 300,),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SansBoldComponent(text: 'About Me', size: 40,),
                SizedBox(height: 20,),
                SansComponent(text: 'Hello! I\'m Ulises Shie Sotelo Chopin, I specialize in fllutter development.',),
                SansComponent(text: 'I strive to create and ensure, a greate user expirience with beatiful astounding performance ',),
                SansComponent(text: 'with state of the art security for Android, Ios, Web, Mac, Linux and Windows',),
                SizedBox(height: 10,),
                RowOfSkillsComponent(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}