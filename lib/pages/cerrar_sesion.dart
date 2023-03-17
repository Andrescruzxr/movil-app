import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:signup_page/login.dart';

class cerrarSesion extends StatelessWidget {
  const cerrarSesion({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'CERRAR SESION',
          style: TextStyle(
            fontSize: 24,
            color: Color.fromARGB(255, 0, 0, 0),
            fontFamily: 'roboto',
            fontWeight: FontWeight.bold,
            decorationColor: Color.fromARGB(235, 53, 216, 38),
            decorationThickness: 2,
          ),
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            // Eliminar datos de autenticación
            /* SharedPreferences prefs = await SharedPreferences.getInstance();
            await prefs.clear();*/

            // Navegar al inicio de sesión
            final route =
                MaterialPageRoute(builder: (context) => const MyLogin());
            Navigator.push(context, route);
          },
          child: Text('Cerrar sesión'),
        ),
      ),
    );
  }
}
