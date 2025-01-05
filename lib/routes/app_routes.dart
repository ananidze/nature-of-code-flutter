import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:nature_0f_code/app/view/error_page.dart';
import 'package:nature_0f_code/app/view/home_page.dart';
import 'package:nature_0f_code/pages/chapter1/bouncing_ball_page.dart';
import 'package:nature_0f_code/routes/route_utils.dart';

class AppRouter {
  GoRouter get router => _goRouter;

  late final GoRouter _goRouter = GoRouter(
    initialLocation: AppPage.home.name,
    routes: <GoRoute>[
      GoRoute(
        path: AppPage.home.path,
        name: AppPage.home.name,
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: AppPage.chapterList.path,
        name: AppPage.chapterList.name,
        builder: (context, state) => const Placeholder(),
      ),
      GoRoute(
        path: AppPage.chapter1Motion.path,
        name: AppPage.chapter1Motion.name,
        builder: (context, state) => const BouncingBallPage(),
      ),
      GoRoute(
        path: AppPage.chapter2Forces.path,
        name: AppPage.chapter2Forces.name,
        builder: (context, state) => const Placeholder(),
      ),
      GoRoute(
        path: AppPage.error.path,
        name: AppPage.error.name,
        builder: (context, state) => ErrorPage(error: state.extra.toString()),
      ),
    ],
    errorBuilder: (context, state) => ErrorPage(error: state.error.toString()),
    redirect: (context, state) => null,
  );
}
