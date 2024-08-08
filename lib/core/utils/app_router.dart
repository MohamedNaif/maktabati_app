import 'package:go_router/go_router.dart';
import 'package:maktabati_app/features/home/presentation/views/home_view.dart';

import '../../features/splash/presentation/views/splash_view.dart';


abstract class AppRouter {
  static final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: '/homeView',
      builder: (context, state) => const HomeView(),
    ),
  ],
);

}

