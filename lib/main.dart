import 'package:flutter/material.dart';
import 'package:signup_page/login.dart';
import 'package:signup_page/pages/cerrar_sesion.dart';
import 'package:signup_page/pages/usuarios.dart';
import 'package:signup_page/registrar.dart';
import 'package:signup_page/inicio.dart';
import 'package:signup_page/perfil.dart';
import 'package:signup_page/foto.dart';
import 'package:signup_page/cultivos.dart';
import 'package:signup_page/pantalla.dart';
import 'package:signup_page/forgot_password.dart';


void main() {
  runApp(
    MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: 'login',
        routes: {
          'login': (context) => const MyLogin(),
          'registrar': (context) => const Registrar(),
          'inicio': (context) => const inicio(),
          'perfil': (context) => perfil(),
          'foto': (context) => const foto(),
          'cultivos': (context) => const cultivos(),
          'forgot': (context) => const forgot_password(),
          'usuarios': (context) => const usuarios(),
          'cerrar_sesion':(context) => const cerrarSesion(),
        }),
  );
}
