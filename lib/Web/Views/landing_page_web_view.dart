import 'package:flutter/material.dart';
import 'package:landing_page/Web/Components/list_of_tabbar_texts_component.dart';
import 'package:landing_page/Web/Views/about_me_view.dart';
import 'package:landing_page/Web/Views/home_view.dart';
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
      drawer: const Drawer(),
      body: Center(
        child: Scrollbar(
          controller: _scrollController,
          thumbVisibility: true,
          trackVisibility: true,
          child: ListView(
            controller: _scrollController,
            children: const [
              HomeView(),
              AboutMeView()
            ],
          ),
        )
      ),
    );
  }
}