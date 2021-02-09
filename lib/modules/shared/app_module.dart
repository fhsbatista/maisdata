import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:maisdata/modules/home/ui/pages/home_page.dart';
import 'package:maisdata/modules/shared/ui/widgets/app_widget.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [];

  @override
  // TODO: implement bootstrap
  Widget get bootstrap => AppWidget();

  @override
  List<ModularRouter> get routers => [
    ModularRouter(Modular.initialRoute, child: (_, __) => HomePage()),
  ];

}