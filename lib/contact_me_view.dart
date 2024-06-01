import 'package:flutter/material.dart';
import 'package:landing_page/Components/image_asset_component.dart';
import 'package:landing_page/Constants/string_constants.dart';
import 'package:landing_page/Mobile/Components/drawer_for_mobile_component.dart';
import 'package:landing_page/Web/Components/drawer_for_web_component.dart';
import 'package:landing_page/Web/Components/list_of_tab_bars_component.dart';
import 'package:landing_page/contact_form_view.dart';

class ContactMeView extends StatefulWidget {
  const ContactMeView({super.key});

  @override
  State<ContactMeView> createState() => _ContactMeViewState();
}

class _ContactMeViewState extends State<ContactMeView> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: width > 800 ? const DrawerForWebComponent() : const DrawerForMobileComponent(),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: width > 800 ? const ListOfTabBarsComponent() : const Text('Contact Me'),
            backgroundColor: Colors.white,
            expandedHeight: 600,
            flexibleSpace: const FlexibleSpaceBar(
              background: ImageAssetComponent(
                pathImage: StringConstants.contactMeImage,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: ContactFormView(),
          )
        ],
      ),
    );
  }
}
