import 'package:go_router/go_router.dart';
import 'package:maktabati_app/features/home/presentation/views/home_view.dart';

import '../../features/home/presentation/views/book_detailes_view.dart';
import '../../features/search_frature/presentation/views/search_view.dart';
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
      GoRoute(
        path: '/bookDetailesView',
        builder: (context, state) => const BookDetailesView(),
      ),
      GoRoute(
        path: '/searchView',
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
