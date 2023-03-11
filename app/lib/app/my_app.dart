import 'package:common_dependencies/common_dependencies.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  final List<LocalizationsDelegate> localeDelegates;

  const MyApp({
    required this.localeDelegates,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appRouter = AppInjector.I.get<AppRouter>();

    return MaterialApp.router(
      routerDelegate: appRouter.delegate(),
      routeInformationParser: appRouter.defaultRouteParser(),
      localeResolutionCallback: localeResolutionCallback,
      supportedLocales: appSupportedLanguages,
      localizationsDelegates: localeDelegates,
      debugShowCheckedModeBanner: false,
    );
  }

  Route<dynamic>? generateRoute({
    required List<RouterModule> routes,
    required RouteSettings settings,
  }) {
    final routesMap = <String, MaterialPageRoute>{};
    for (final route in routes) {
      routesMap.addAll(route.getRoutes(settings));
    }
    return routesMap[settings.name];
  }
}
