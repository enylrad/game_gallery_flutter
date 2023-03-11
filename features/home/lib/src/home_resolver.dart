import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:home/src/di/home_injection_module.dart';
import 'package:home/src/localization/home_delegate.dart';

class HomeResolver implements FeatureResolver {
  @override
  InjectionModule? get injectionModule => HomeInjectionModule();

  @override
  LocalizationsDelegate? get localeDelegate => homeLocalizationDelegate;
}
