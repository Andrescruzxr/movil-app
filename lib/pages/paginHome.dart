import 'package:flutter/material.dart';
import 'package:signup_page/pages/cerrar_sesion.dart';
import 'package:signup_page/perfil.dart';

class paginaHome extends StatelessWidget {
  const paginaHome({super.key});

  @override
  Widget build(BuildContext context) {
    const title = 'Modo1 Administrador\nAyudagro';
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(title),
        ),
        body: ListView(
          children: [
            ListTile(
              title: const Text('Perfil'),
              leading: const Icon(Icons.account_box_sharp),
              onTap: () {
                final route =
                    MaterialPageRoute(builder: (context) => const perfil());
                Navigator.push(context, route);
              },
            ),
            ListTile(
              title: const Text('Usuarios activos'),
              leading: const Icon(Icons.account_box_sharp),
              onTap: () {
                final route =
                    MaterialPageRoute(builder: (context) => const perfil());
                Navigator.push(context, route);
              },
            ),
            ListTile(
              title: const Text('Usuarios'),
              leading: const Icon(Icons.face_sharp),
              onTap: () {
                final route =
                    MaterialPageRoute(builder: (context) => const perfil());
                Navigator.push(context, route);
              },
            ),
            ListTile(
              title: const Text('Cerrar sesion'),
              leading: const Icon(Icons.disabled_by_default),
              onTap: () {
                final route = MaterialPageRoute(
                    builder: (context) => const cerrarSesion());
                Navigator.push(context, route);
              },
            ),
          ],
        ),
      ),
    );
  }
}
