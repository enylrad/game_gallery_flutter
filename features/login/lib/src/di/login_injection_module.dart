import 'dart:async';

import 'package:core/core.dart';

class LoginInjectionModule implements InjectionModule {
  @override
  FutureOr<void> registerDependencies({
    required Injector injector,
    required BuildConfig buildConfig,
  }) async {}
}
