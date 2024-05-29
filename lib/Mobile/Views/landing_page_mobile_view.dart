import 'package:flutter/material.dart';

class LandingPageMobileView extends StatefulWidget {
  const LandingPageMobileView({ super.key });

  @override
  State<LandingPageMobileView> createState() => _LandingPageMobileViewState();
}

class _LandingPageMobileViewState extends State<LandingPageMobileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Landing Page Mobile View'),
      ),

      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Welcome to the landing mobile page!',
            ),
          ],
        ),
      ),
    );
  }
}