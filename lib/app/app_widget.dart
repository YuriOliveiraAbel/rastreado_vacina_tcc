import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.blue),
      title: 'Rastreador Vacinas',
      onGenerateRoute: Modular.generateRoute,
      debugShowCheckedModeBanner: false,
      navigatorKey: Modular.navigatorKey,
    );
  }
}
