import 'package:flutter/material.dart';
import 'package:landing_page/Components/animated_card_Image_component.dart';
import 'package:landing_page/Components/image_asset_component.dart';
import 'package:landing_page/Constants/constant_strings.dart';

class RowOfWorksComponent extends StatefulWidget {
  const RowOfWorksComponent({super.key});

  @override
  State<RowOfWorksComponent> createState() => _RowOfWorksComponentState();
}

class _RowOfWorksComponentState extends State<RowOfWorksComponent> {
  final ScrollController _scrollController = ScrollController();

  static const List<Widget> children = [
    Spacer(),
    AnimatedCardImageComponent(
      imagePath: ConstantStrings.webImage,
      text: 'Web development',
    ),
    Spacer(),
    AnimatedCardImageComponent(
      imagePath: ConstantStrings.appImage,
      text: 'App development',
      reverse: true,
    ),
    Spacer(),
    AnimatedCardImageComponent(
      imagePath: '',
      text: 'Back-end development',
      child: SizedBox(
        height: 250,
        width: 250,
        child: Wrap(
          alignment: WrapAlignment.spaceEvenly,
          crossAxisAlignment: WrapCrossAlignment.center,
          runSpacing: 10,
          children: [
            ImageAssetComponent(
              pathImage: ConstantStrings.mariaDBImage,
              width: 120,
              height: 120,
            ),
            ImageAssetComponent(
              pathImage: ConstantStrings.mysqlImage,
              width: 120,
              height: 120,
            ),
            ImageAssetComponent(
              pathImage: ConstantStrings.firebaseImage,
              width: 120,
              height: 120,
            ),
          ],
        ),
      ),
    ),
    Spacer(),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _scrollController.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Scrollbar(
        controller: _scrollController,
        child: SingleChildScrollView(
          controller: _scrollController,
          scrollDirection: Axis.horizontal,
          child: SizedBox(
            width: width < 1000 ? 1000 : width,
            height: 450,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: children,
            ),
          ),
        ),
      ),
    );
  }
}
