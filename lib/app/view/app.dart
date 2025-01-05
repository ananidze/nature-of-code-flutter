import 'package:flutter/material.dart';
import 'package:nature_0f_code/l10n/l10n.dart';
import 'package:nature_0f_code/routes/app_routes.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final goRouter = AppRouter().router;

    return MaterialApp.router(
      theme: ThemeData(),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      routerConfig: goRouter,
      // routerDelegate: goRouter.routerDelegate,
      // routeInformationParser: goRouter.routeInformationParser,
    );
  }
}
