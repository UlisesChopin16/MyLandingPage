import 'package:go_router/go_router.dart';
import 'package:landing_page/Web/Views/about_me_view.dart';
import 'package:landing_page/Web/Views/contact_view.dart';
import 'package:landing_page/Web/Views/home_view.dart';
import 'package:landing_page/check_size_view.dart';

class Routes {
  static GoRouter router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) {
          return const CheckSizeView();
        },
      ),
      GoRoute(
        path: '/home',
        builder: (context, state) => const HomeView()
      ),
      GoRoute(
        path: '/about',
        builder: (context, state) => const AboutMeView(),
      ),
      GoRoute(
        path: '/contact',
        builder: (context, state) => const ContactView(),
      ),
    ],
  );
}
