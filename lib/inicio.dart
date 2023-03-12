import 'package:flutter/material.dart';
import 'package:signup_page/inicio.dart';

class inicio extends StatefulWidget {
  const inicio({Key? key}) : super(key: key);

  @override
  State<inicio> createState() => _inicioState();
}

class _inicioState extends State<inicio> {
  int _paginaActual = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "maetrial",
      home: Scaffold(
        appBar: AppBar(
          title: Text("inicio Ayudagro"),
        ),
        body: _paginaActual == 0 ? paginaHome() : paginaUsers(),
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

class paginaHome extends StatelessWidget {
  const paginaHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Modo\nAdministrador",
        style: TextStyle(fontSize: 30),
      ),
    );
  }
}

class paginaUsers extends StatelessWidget {
  const paginaUsers({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Modo\nUsuario",
        style: TextStyle(fontSize: 30),
      ),
    );
  }
}
