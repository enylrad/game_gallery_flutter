import 'dart:async';

import 'package:game_gallery/environments/app_start.dart';
import 'package:game_gallery/environments/production/production_build_config.dart';

class ProductionApp extends AppStart {
  ProductionApp() : super(ProductionBuildConfig());
}

Future<void> main() => ProductionApp().startApp();
