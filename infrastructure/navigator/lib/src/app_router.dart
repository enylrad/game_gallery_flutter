import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';
import 'package:home/home.dart';
import 'package:login/login.dart';
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
    AdaptiveRoute(
      page: HomeScreen,
      path: '/',
      name: 'HomeRoute',
      initial: false,
    ),
    AdaptiveRoute(
      page: LoginScreen,
      path: '/login',
      name: 'LoginRoute',
      initial: false,
    ),
  ],
)
class AppRouter extends _$AppRouter {
  AppRouter();
}
