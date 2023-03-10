import 'package:core/core.dart';
import 'package:game_gallery/di/module/app_library_module.dart';

class LibraryResolver extends FeatureResolver {
  @override
  InjectionModule? get injectionModule => AppLibraryModule();
}
