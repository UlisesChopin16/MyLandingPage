import 'package:flutter/material.dart';
import 'package:landing_page/Components/image_asset_component.dart';
import 'package:landing_page/Web/Components/animated_card_web_component.dart';

class ColumnOfWorksComponent extends StatelessWidget {
  const ColumnOfWorksComponent({super.key});

  static const List<Widget> children = [
    Spacer(),
    AnimatedCardWebComponent(
      imagePath: 'assets/images/webL.png',
      text: 'Web development',
      width: 200,
      height: 150,
    ),
    Spacer(),
    AnimatedCardWebComponent(
      imagePath: 'assets/images/app.png',
      text: 'App development',
      width: 200,
      height: 150,
      reverse: true,
    ),
    Spacer(),
    AnimatedCardWebComponent(
      imagePath: '',
      text: 'Back-end development',
      child: SizedBox(
        width: 200,
        child: Wrap(
          alignment: WrapAlignment.spaceEvenly,
          crossAxisAlignment: WrapCrossAlignment.center,
          runSpacing: 10,
          children: [
            ImageAssetComponent(
              pathImage: 'assets/images/mariaDB.png',
              width: 80,
              height: 80,
            ),
            ImageAssetComponent(
              pathImage: 'assets/images/mysql.png',
              width: 70,
              height: 80,
            ),
            ImageAssetComponent(
              pathImage: 'assets/images/firebase.png',
              width: 100,
              height: 80,
            ),
          ],
        ),
      ),
    ),
    Spacer(),
  ];

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: SizedBox(
        height: height > 400 ? height : 400,
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: children,
        ),
      ),
    );
  }
}
