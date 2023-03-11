import 'package:core/core.dart';
import 'package:flutter/material.dart';

abstract class FeatureResolver {
  LocalizationsDelegate? get localeDelegate => null;

  InjectionModule? get injectionModule => null;
}
