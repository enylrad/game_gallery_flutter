import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';
import 'package:splash/splash.dart';

part 'app_router.gr.dart';

@AdaptiveAutoRouter(
  routes: <AutoRoute>[
    AdaptiveRoute(
      page: SplashScreen,
      path: '/',
      name: 'SplashRoute',
      initial: true,
    ),
  ],
)
class AppRouter extends _$AppRouter {
  AppRouter();
}
