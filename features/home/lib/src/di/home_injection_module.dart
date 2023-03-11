import 'dart:async';

import 'package:core/core.dart';

class HomeInjectionModule implements InjectionModule {
  @override
  FutureOr<void> registerDependencies({
    required Injector injector,
    required BuildConfig buildConfig,
  }) async {}
}
