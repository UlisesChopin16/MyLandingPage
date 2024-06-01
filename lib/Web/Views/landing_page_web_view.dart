import 'package:flutter/material.dart';
import 'package:landing_page/Web/Components/drawer_for_web_component.dart';
import 'package:landing_page/Web/Components/tab_bar_component.dart';
import 'package:landing_page/Web/Views/about_me_view.dart';
import 'package:landing_page/Web/Views/experience_view.dart';
import 'package:landing_page/Web/Views/home_view.dart';
import 'package:landing_page/contact_form_view.dart';

class LandingPageWebView extends StatefulWidget {
  const LandingPageWebView({super.key});

  @override
  State<LandingPageWebView> createState() => _LandingPageWebViewState();
}

class _LandingPageWebViewState extends State<LandingPageWebView> {
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const TabBarComponent(),
      drawer: const DrawerForWebComponent(),
      body: Center(
        child: Scrollbar(
          controller: _scrollController,
          thumbVisibility: true,
          trackVisibility: true,
          child: ListView(
            controller: _scrollController,
            children: const <Widget>[
              HomeView(),
              AboutMeView(),
              ExperienceView(),
              ContactFormView(),
            ],
          ),
        ),
      ),
    );
  }
}
