import 'package:flutter/material.dart';
import 'package:landing_page/Components/contact_form_component.dart';
import 'package:landing_page/Components/image_asset_component.dart';
import 'package:landing_page/Components/sans_font_component.dart';
import 'package:landing_page/Constants/constant_strings.dart';
import 'package:landing_page/Mobile/Components/drawer_for_mobile_component.dart';
import 'package:landing_page/Web/Components/drawer_for_web_component.dart';
import 'package:landing_page/Web/Components/list_of_tab_bars_component.dart';

class ContactMeView extends StatefulWidget {
  const ContactMeView({super.key});

  @override
  State<ContactMeView> createState() => _ContactMeViewState();
}

class _ContactMeViewState extends State<ContactMeView> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height - AppBar().preferredSize.height;
    return Scaffold(
      drawer: width > 800 ? const DrawerForWebComponent() : const DrawerForMobileComponent(),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            toolbarHeight: 55,
            title: width > 800 ? const ListOfTabBarsComponent() : null,
            backgroundColor: Colors.white,
            expandedHeight: height > 800 ? 600 : 400,
            flexibleSpace: FlexibleSpaceBar(
              background: const ImageAssetComponent(
                pathImage: ConstantStrings.contactMeImage,
                fit: BoxFit.cover,
              ),
              centerTitle: true,
              title: width < 800
                  ? const SansBold(
                      text: ConstantStrings.contactMe,
                      size: 38,
                    )
                  : null,
            ),
          ),
          SliverToBoxAdapter(
            child: ContactFormView(
              title:  width < 800
                  ? false : true,
            ),
          )
        ],
      ),
    );
  }
}
