import 'package:flutter/material.dart';
import 'package:signup_page/cultivos.dart';
import 'package:signup_page/foto.dart';
import 'package:signup_page/inicio.dart';
import 'package:signup_page/login.dart';
import 'package:signup_page/perfil.dart';
import 'package:signup_page/registrar.dart';

import '../models/menu_option.dart';

class AppRoutes {
  static const initialRoute = 'login';

  static final menuOptions = <MenuOption>[
    // TODO: borrar home
    MenuOption(
      route: 'home',
      name: 'Pantalla principal',
      screen: const Registrar(),
      icon: Icons.home,
    ),
    MenuOption(
      route: 'listview2',
      name: 'Listview tipo 1',
      screen: const inicio(),
      icon: Icons.list,
    ),
    MenuOption(
      route: 'separated',
      name: 'Listview tipo 2',
      screen: const perfil(),
      icon: Icons.list_alt,
    ),
    MenuOption(
      route: 'alert',
      name: 'Alert Screen',
      screen: const cultivos(),
      icon: Icons.warning,
    ),
    MenuOption(
        route: 'card',
        name: 'Card Screen',
        screen: const foto(),
        icon: Icons.picture_in_picture_alt),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }

  // // mapea las rutas  usando  routes
  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (BuildContext context) => const HomeScreen(),
  //   'separated': (BuildContext context) => const ListviewSeparatedScreen(),
  //   'listview2': (BuildContext context) => const Listview2Screen(),
  //   'card': (BuildContext context) => const CardScreen(),
  //   'alert': (BuildContext context) => const AlertScreen(),
  // };
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const cultivos(),
    );
  }
}
