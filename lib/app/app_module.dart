import 'package:rastreador_vacina_tcc/app/screens/home_screen.dart';
import 'package:rastreador_vacina_tcc/app/screens/new_shipping.dart';
import 'package:rastreador_vacina_tcc/app/screens/shipping_list.dart';

import 'app_widget.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRouter> get routers => [
        ModularRouter('/', child: (_, args) => HomeScreen()),
        ModularRouter('/new_shipping', child: (_, args) => NewShipping()),
        ModularRouter(
          '/shipping_list',
          child: (_, args) => ShippingList(
            shippings: args.data,
          ),
        ),
      ];

  @override
  Widget get bootstrap {
    return AppWidget();
  }

  static Inject get to => Inject<AppModule>.of();
}
