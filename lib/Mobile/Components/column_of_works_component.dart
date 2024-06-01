import 'package:flutter/material.dart';
import 'package:landing_page/Components/animated_card_Image_component.dart';
import 'package:landing_page/Components/image_asset_component.dart';
import 'package:landing_page/Constants/constant_strings.dart';

class ColumnOfWorksComponent extends StatelessWidget {
  const ColumnOfWorksComponent({super.key});

  static const List<Widget> children = [
    Spacer(),
    AnimatedCardImageComponent(
      imagePath: ConstantStrings.webImage,
      text: ConstantStrings.webDev,
      width: 200,
      height: 150,
    ),
    Spacer(),
    AnimatedCardImageComponent(
      imagePath: ConstantStrings.appImage,
      text: ConstantStrings.appDev,
      width: 200,
      height: 150,
      reverse: true,
    ),
    Spacer(),
    AnimatedCardImageComponent(
      imagePath: '',
      text: ConstantStrings.backDev,
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
