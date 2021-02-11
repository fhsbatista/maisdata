import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:maisdata/modules/shared/app_module.dart';
import 'package:maisdata/modules/shared/hive_helper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await HiveHelper.init();
  runApp(ModularApp(module: AppModule()));
}
