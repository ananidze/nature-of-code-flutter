import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:nature_0f_code/app/view/error_page.dart';
import 'package:nature_0f_code/app/view/home_page.dart';
import 'package:nature_0f_code/pages/chapter1/bouncing_ball_page.dart';
import 'package:nature_0f_code/routes/route_utils.dart';

class AppRouter {
  GoRouter get router => _goRouter;

  late final GoRouter _goRouter = GoRouter(
    initialLocation: APP_PAGE.home.toPath,
    routes: <GoRoute>[
      GoRoute(
        path: APP_PAGE.home.toPath,
        name: APP_PAGE.home.toName,
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: APP_PAGE.chapterList.toPath,
        builder: (context, state) => const Placeholder(),
      ),
      GoRoute(
        path: APP_PAGE.chapter1Motion.toPath,
        builder: (context, state) => const BouncingBallPage(),
      ),
      GoRoute(
        path: APP_PAGE.chapter2Forces.toPath,
        builder: (context, state) => const Placeholder(),
      ),
      GoRoute(
        path: APP_PAGE.error.toPath,
        name: APP_PAGE.error.toName,
        builder: (context, state) => ErrorPage(error: state.extra.toString()),
      ),
    ],
    errorBuilder: (context, state) => ErrorPage(error: state.error.toString()),
    redirect: (context, state) => null,
  );
}
