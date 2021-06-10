import 'package:controle_app/pages/login/login_widgets.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  final List<ModularRoute> routes = [
    ChildRoute('/login', child: (_, __) => LoginPage()),
  ];
}
