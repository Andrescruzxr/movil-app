import 'package:flutter/material.dart';
import 'package:signup_page/inicio.dart';
import 'package:signup_page/pages/paginHome.dart';
import 'package:signup_page/pages/paginaUsers.dart';

class inicio extends StatefulWidget {
  const inicio({Key? key}) : super(key: key);

  @override
  State<inicio> createState() => _inicioState();
}

class _inicioState extends State<inicio> {
  int _paginaActual = 1;
//estas paginas estan en la carpeta pages/2archivos.dart
  List<Widget> _paginas = [
    paginaHome(),
    paginaUsers(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "maetrial",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Ayudagro 1.0"),
        ),
        body: _paginas[_paginaActual],
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              _paginaActual = index;
            });
          },
          currentIndex: _paginaActual,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.app_settings_alt_rounded),
                label: "Modo\nAdministrador"),
            BottomNavigationBarItem(
                icon: Icon(Icons.supervised_user_circle),
                label: "Modo\nUusuario")
          ],
        ),
      ),
    );
  }
}
