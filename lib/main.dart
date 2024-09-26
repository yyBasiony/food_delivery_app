import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app/localization.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  EasyLocalization.logger.enableLevels = [];
  await EasyLocalization.ensureInitialized();

  // SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky, overlays: [SystemUiOverlay.bottom]);
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(statusBarColor: Colors.transparent));

  runApp(const AppLocalization());
}
