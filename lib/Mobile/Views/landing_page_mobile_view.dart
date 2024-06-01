import 'package:flutter/material.dart';
import 'package:landing_page/Mobile/Components/drawer_for_mobile_component.dart';
import 'package:landing_page/Mobile/Views/about_me_view_m.dart';
import 'package:landing_page/Mobile/Views/experience_view_m.dart';
import 'package:landing_page/Mobile/Views/home_view_m.dart';
import 'package:landing_page/contact_form_view.dart';

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
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text('Landing Page Mobile View'),
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
              HomeViewM(),
              AboutMeViewM(),
              ExperienceViewM(),
              SizedBox(
                height: 30.0,
              ),
              ContactFormView()
            ],
          ),
        ),
      ),
    );
  }
}
