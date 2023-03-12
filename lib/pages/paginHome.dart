import 'package:flutter/material.dart';

class paginaHome extends StatelessWidget {
  const paginaHome({super.key});

  @override
  Widget build(BuildContext context) {
    const title = 'Modo Administrador\nAyudagro';
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(title),
        ),
        body: ListView(
          children: const <Widget>[
            ListTile(
              leading: Icon(Icons.account_box_sharp),
              title: Text('Perfil'),
            ),
            ListTile(
              leading: Icon(Icons.account_box_sharp),
              title: Text('Listar usuarios'),
            ),
            ListTile(
              leading: Icon(Icons.face_sharp),
              title: Text('Usuarios'),
            ),
            ListTile(
              leading: Icon(Icons.contact_support_outlined),
              title: Text('Preguntas'),
            ),
            ListTile(
              leading: Icon(Icons.contact_support_outlined),
              title: Text('Preguntas'),
            ),
            ListTile(
              leading: Icon(Icons.disabled_by_default),
              title: Text('Cerrar sesion'),
            ),
          ],
        ),
      ),
    );
  }
}
