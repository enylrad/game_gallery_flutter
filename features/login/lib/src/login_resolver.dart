import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:login/src/di/login_injection_module.dart';
import 'package:login/src/localization/login_delegate.dart';

class LoginResolver implements FeatureResolver {
  @override
  InjectionModule? get injectionModule => LoginInjectionModule();

  @override
  LocalizationsDelegate? get localeDelegate => loginLocalizationDelegate;
}
