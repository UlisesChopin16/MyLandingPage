import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:landing_page/routes.dart';

class TabbarFunctions {

  static void homeTab(BuildContext context) {
    // Do something
    context.go(Routes.home);
  }

  static void experienceTab(BuildContext context) {
    // Do something
  }

  static void blogTab(BuildContext context) {
    // Do something
    context.go(Routes.blog);
  }

  static void aboutTab(BuildContext context) {
    // Do something
    context.go(Routes.about);
  }

  static void contactTab(BuildContext context) {
    // Do something
    context.go(Routes.contactMe);
  }
}
