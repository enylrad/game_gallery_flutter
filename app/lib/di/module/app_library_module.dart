import 'dart:async';

import 'package:common_dependencies/common_dependencies.dart';
import 'package:core/core.dart';

/// Register here all the third party libraries so they can be provided
/// for the rest of the packages.
class AppLibraryModule implements InjectionModule {
  @override
  FutureOr<void> registerDependencies({
    required Injector injector,
    required BuildConfig buildConfig,
  }) async {
    injector.registerSingleton(AppRouter());
  }
}
