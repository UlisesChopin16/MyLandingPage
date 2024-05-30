import 'package:flutter/material.dart';
import 'package:landing_page/Components/circle_avatar_component.dart';
import 'package:landing_page/Components/sans_bold_component.dart';
import 'package:landing_page/Web/Components/list_of_tabbar_texts_component.dart';
import 'package:landing_page/Web/Views/about_me_view.dart';
import 'package:landing_page/Web/Views/contact_view.dart';
import 'package:landing_page/Web/Views/home_view.dart';
import 'package:landing_page/Web/Views/works_view.dart';
// import 'package:landing_page/Web/Components/tabbar_text_component.dart';

class LandingPageWebView extends StatefulWidget {
  const LandingPageWebView({ super.key });

  @override
  State<LandingPageWebView> createState() => _LandingPageWebViewState();
}

class _LandingPageWebViewState extends State<LandingPageWebView> {

  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const ListOfTabbarTextsComponent(),
        // actions: const [
        //   SizedBox(width: 50,),
        //   TabbarTextComponent(text: 'Login'),
        //   SizedBox(width: 20,),
        //   TabbarTextComponent(text: 'Sign Up'),
        //   SizedBox(width: 50,),
        // ],
      ),
      drawer: const Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatarComponent(radius: 100),
            SizedBox(height: 20,),
            SansBoldComponent(text: 'Ulises Shie Sotelo Chopin', size: 30, textAlign: TextAlign.center,),
          ],
        ),
      ),
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
              WorksView(),
              ContactView(),
            ],
          ),
        )
      ),
    );
  }
}