import 'package:game_gallery/environments/app_start.dart';
import 'package:game_gallery/environments/staging/staging_build_config.dart';

class StagingApp extends AppStart {
  StagingApp() : super(StagingBuildConfig());
}

Future<void> main() => StagingApp().startApp();
