import 'package:flutter/material.dart';
import 'package:landing_page/Constants/constant_strings.dart';
import 'package:landing_page/Web/Components/tabbar_text_component.dart';
import 'package:landing_page/tabbar_functions.dart';

class ListOfTabBarsComponent extends StatelessWidget {

  /// Put in true if you want the tabbarTexts to be on the right side
  /// Put in false if you want the tabbarTexts to be on the left side
  /// Default is false
  final bool leftOrRight;

  final Color textColor;
  const ListOfTabBarsComponent({
    super.key,
    this.textColor = Colors.black,
    this.leftOrRight = false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Spacer(
          flex: leftOrRight ? 8 : 1,
        ),
        TabbarTextComponent(
          text: ConstantStrings.home,
          onTap: TabbarFunctions.homeTab,
          textColor: textColor,
        ),
        const Spacer(),
        TabbarTextComponent(
          text: ConstantStrings.works,
          onTap: TabbarFunctions.worksTab,
          textColor: textColor,
        ),
        const Spacer(),
        TabbarTextComponent(
          text: ConstantStrings.blog,
          onTap: TabbarFunctions.blogTab,
          textColor: textColor,
        ),
        const Spacer(),
        TabbarTextComponent(
          text: ConstantStrings.aboutMe,
          onTap: TabbarFunctions.aboutTab,
          textColor: textColor,
        ),
        const Spacer(),
        TabbarTextComponent(
          text: ConstantStrings.contactMe,
          onTap: TabbarFunctions.contactTab,
          textColor: textColor,
        ),
        Spacer(
          flex: leftOrRight ? 1 : 8,
        ),
      ],
    );
  }
}
