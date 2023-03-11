import 'dart:async';

import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:game_gallery/app/my_app.dart';
import 'package:game_gallery/di/app_component.dart';
import 'package:game_gallery/resolvers/app_resolver.dart';
import 'package:game_gallery/resolvers/library_resolver.dart';
import 'package:home/home.dart';
import 'package:login/login.dart';
import 'package:splash/splash.dart';

abstract class AppStart {
  final BuildConfig buildConfig;

  /// The order of initialization matters, make sure that the deps of you
  /// package were initialized before him, otherwhise you will end up with
  /// a exception from gitIt container.
  final resolvers = <FeatureResolver>[
    LibraryResolver(),

    // Features
    SplashResolver(),
    HomeResolver(),
    LoginResolver(),

    // App
    AppResolver(),
  ];

  AppStart(this.buildConfig);

  Future<void> startApp() async {
    WidgetsFlutterBinding.ensureInitialized();

    final delegates = <LocalizationsDelegate>[
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
    ];
    final injections = <InjectionModule>[];

    for (final resolver in resolvers) {
      if (resolver.localeDelegate != null) {
        delegates.add(resolver.localeDelegate!);
      }

      if (resolver.injectionModule != null) {
        injections.add(resolver.injectionModule!);
      }
    }

    await AppInjectionComponent.instance.registerModules(
      config: buildConfig,
      modules: injections,
    );

    await runZonedGuarded<Future<void>>(
      () async {
        runApp(
          MyApp(
            localeDelegates: delegates,
          ),
        );
      },
      (_, __) {},
    );
  }
}
