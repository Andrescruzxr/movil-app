import 'package:flutter/material.dart';

class paginaUsers extends StatelessWidget {
  const paginaUsers({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
      appBar: AppBar(
        title: const Text('Menu Principal'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 19, 210, 124),
              ),
              child: Text(
                'Menu Principal',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Perfil'),
            ),
            ListTile(
              leading: Icon(Icons.account_box_sharp),
              title: Text('Usuarios'),
            ),
            ListTile(
              leading: Icon(Icons.contact_support_outlined),
              title: Text('Preguntas'),
            ),
            ListTile(
              leading: Icon(Icons.content_paste),
              title: Text('Sugerencias'),
            ),
            ListTile(
              leading: Icon(Icons.perm_contact_calendar_rounded),
              title: Text('Categorias'),
            ),
            ListTile(
              leading: Icon(Icons.commit_rounded),
              title: Text('Subcategorias'),
            ),
            ListTile(
              leading: Icon(Icons.disabled_by_default),
              title: Text('cerrar Sesion'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Configuracion'),
            ),
          ],
        ),
      ),
    ));
    /*return MaterialApp(
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
              leading: Icon(Icons.face_sharp),
              title: Text('Usuarios'),
            ),
            ListTile(
              leading: Icon(Icons.contact_support_outlined),
              title: Text('Preguntas'),
            ),
            ListTile(
              leading: Icon(Icons.contact_support_outlined),
              title: Text('Respuestas'),
            ),
            ListTile(
              leading: Icon(Icons.domain_add),
              title: Text('Sugerencias'),
            ),
            ListTile(
              leading: Icon(Icons.dvr_outlined),
              title: Text('Categorias'),
            ),
            ListTile(
              leading: Icon(Icons.drive_file_move),
              title: Text('Subcategorias'),
            ),
            ListTile(
              leading: Icon(Icons.disabled_by_default),
              title: Text('Cerrar sesion'),
            ),
          ],
        ),
      ),
    );*/
  }
}
