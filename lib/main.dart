import 'package:controle_app/pages/login/login_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Controle',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/",
    ).modular();
  }
}
