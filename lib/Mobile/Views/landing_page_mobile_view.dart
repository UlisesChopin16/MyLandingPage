import 'package:flutter/material.dart';
import 'package:landing_page/Components/contact_form_component.dart';
import 'package:landing_page/Mobile/Components/about_me_component_m.dart';
import 'package:landing_page/Mobile/Components/drawer_for_mobile_component.dart';
import 'package:landing_page/Mobile/Components/experience_component_m.dart';
import 'package:landing_page/Mobile/Components/home_component_m.dart';
import 'package:landing_page/Mobile/Components/mobile_tab_bar_component.dart';

class LandingPageMobileView extends StatefulWidget {
  const LandingPageMobileView({super.key});

  @override
  State<LandingPageMobileView> createState() => _LandingPageMobileViewState();
}

class _LandingPageMobileViewState extends State<LandingPageMobileView> {
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const MobileTabBarComponent(
        title: 'Home',
      ),
      drawer: const DrawerForMobileComponent(),
      body: Center(
        child: Scrollbar(
          controller: _scrollController,
          thumbVisibility: true,
          trackVisibility: true,
          child: ListView(
            controller: _scrollController,
            children: const <Widget>[
              HomeComponentM(),
              AboutMeComponentM(),
              ExperienceComponentM(),
              SizedBox(
                height: 30.0,
              ),
              ContactFormComponent()
            ],
          ),
        ),
      ),
    );
  }
}
