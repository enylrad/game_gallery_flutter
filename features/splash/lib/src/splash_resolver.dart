import 'package:core/core.dart';
import 'package:splash/src/di/splash_injection.dart';

class SplashResolver extends FeatureResolver {
  @override
  InjectionModule? get injectionModule => SplashInjectionModule();
}
