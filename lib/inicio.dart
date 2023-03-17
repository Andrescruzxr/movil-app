import 'package:flutter/material.dart';
import 'package:signup_page/inicio.dart';
import 'package:signup_page/pages/paginHome.dart';
import 'package:signup_page/pages/paginaPregunta.dart';
import 'package:signup_page/pages/paginaUsers.dart';

import 'widgest/custom_card_type1.dart';
import 'widgest/custom_card_type2.dart';

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
    paginaPreguntas(),
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
              //displayDialog(context);
            });
          },
          currentIndex: _paginaActual,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.app_settings_alt_rounded),
                label: "Modo\nAdministrador"),
            BottomNavigationBarItem(
                icon: Icon(Icons.supervised_user_circle),
                label: "Modo\nUusuario"),
            BottomNavigationBarItem(
                icon: Icon(Icons.note_add), label: "Realiza tus \nPreguntas"),
          ],
        ),
      ),
    );
  }

  void displayDialog(BuildContext context) {
    showDialog(
      barrierDismissible: true,
      context: context,
      builder: (context) {
        return AlertDialog(
            elevation: 5,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusDirectional.circular(10)),
            title: const Text('BIEMVENIDO AYUDAGRO'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text(
                    'Ayudagro la app que  apoya el campo le agradece po utilizar nuestros servicios'),
                SizedBox(height: 10),
                FlutterLogo(size: 100)
              ],
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text(
                  'CONTINUAR  =>',
                  style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                ),
              ),
            ]);
      },
    );
  }
}
