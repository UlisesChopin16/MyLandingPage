import 'package:flutter/material.dart';
import 'package:landing_page/Constants/constant_strings.dart';
import 'package:landing_page/Web/Components/tabbar_text_component.dart';
import 'package:landing_page/tabbar_functions.dart';

class ListOfTabBarsComponent extends StatelessWidget {
  const ListOfTabBarsComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: <Widget>[
        Spacer(),
        TabbarTextComponent(
          text: ConstantStrings.home,
          onTap: TabbarFunctions.homeTab,
        ),
        Spacer(),
        TabbarTextComponent(
          text: ConstantStrings.experience,
          onTap: TabbarFunctions.experienceTab,
        ),
        Spacer(),
        TabbarTextComponent(
          text: ConstantStrings.blog,
          onTap: TabbarFunctions.blogTab,
        ),
        Spacer(),
        TabbarTextComponent(
          text: ConstantStrings.aboutMe,
          onTap: TabbarFunctions.aboutTab,
        ),
        Spacer(),
        TabbarTextComponent(
          text: ConstantStrings.contactMe,
          onTap: TabbarFunctions.contactTab,
        ),
        Spacer(
          flex: 8,
        ),
      ],
    );
  }
}
