import 'package:flutter/material.dart';
import 'package:landing_page/Mobile/Views/landing_page_mobile_view.dart';
import 'package:landing_page/Web/Views/landing_page_web_view.dart';

class CheckSizeView extends StatefulWidget {
  const CheckSizeView({ super.key });

  @override
  State<CheckSizeView> createState() => _CheckSizeViewState();
}

class _CheckSizeViewState extends State<CheckSizeView> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constrains) {
        if (constrains.maxWidth > 800) {
          return const LandingPageWebView();
        } else {
          return const LandingPageMobileView();
        }
      }
    );
  }
}
