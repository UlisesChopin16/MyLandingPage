import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:landing_page/Mobile/Views/about_me_view_m.dart';
import 'package:landing_page/Web/Views/about_me_view.dart';
import 'package:landing_page/blog_view.dart';
import 'package:landing_page/check_size_view.dart';
import 'package:landing_page/contact_me_view.dart';
import 'package:landing_page/works_view.dart';

class Routes {
  static const String home = '/';
  static const String works = '/works';
  static const String blog = '/blog';
  static const String about = '/about-me';
  static const String contactMe = '/contact-me';

  static GoRouter router = GoRouter(
    initialLocation: home,
    onException: (context, state, router) {
      router.go(home);
    },
    routes: [
      GoRoute(
        path: home,
        builder: (context, state) {
          return const CheckSizeView();
        },
      ),
      GoRoute(
        path: works,
        builder: (context, state) => const WorksView(),
      ),
      GoRoute(
        path: blog,
        builder: (context, state) => const BlogView(),
      ),
      GoRoute(
        path: about,
        builder: (context, state) => LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            if (constraints.maxWidth < 800) {
              return const AboutMeViewM();
            } else {
              return const AboutMeView();
            }
          },
        ),
      ),
      GoRoute(
        path: contactMe,
        builder: (context, state) => const ContactMeView(),
      ),
    ],
  );
}
