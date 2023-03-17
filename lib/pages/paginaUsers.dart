import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:signup_page/inicio.dart';
import 'package:signup_page/pages/categorias.dart';
import 'package:signup_page/pages/cerrar_sesion.dart';
import 'package:signup_page/pages/paginaPregunta.dart';
import 'package:signup_page/pages/usuarios.dart';
import 'package:signup_page/perfil.dart';
import 'package:signup_page/registrar.dart';

import '../widgest/custom_card_type1.dart';
import '../widgest/custom_card_type2.dart';

class paginaUsers extends StatelessWidget {
  const paginaUsers({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Menu Principal'),
        ),

        //body
        body: Container(
          padding: const EdgeInsets.only(top: 1),
          child: Center(
            child: CarouselSlider(
              items: [
                // Aquí puedes colocar los elementos que deseas mostrar en el carrousel

                Image.asset('assets/images/campo1.png'),
                Image.asset('assets/images/sssss.png'),
                Image.asset('assets/images/facebook.png'),
                Image.asset('assets/images/campo2.png'),

                // Text('Elemento 3'),
              ],
              options: CarouselOptions(
                height: 400.0,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(seconds: 1),
                viewportFraction: 0.6,
              ),
            ),
          ),
        ),

        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
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
                title: const Text('Perfil'),
                leading: const Icon(Icons.account_box_sharp),
                onTap: () {
                  final route =
                      MaterialPageRoute(builder: (context) => const perfil());
                  Navigator.push(context, route);
                },
              ),
              ListTile(
                title: const Text('Usuarios'),
                leading: const Icon(Icons.account_box_sharp),
                onTap: () {
                  final route =
                      MaterialPageRoute(builder: (context) => const usuarios());
                  Navigator.push(context, route);
                },
              ),
              ListTile(
                title: const Text('Preguntas'),
                leading: const Icon(Icons.contact_support_outlined),
                onTap: () {
                  final route = MaterialPageRoute(
                      builder: (context) => paginaPreguntas());
                  Navigator.push(context, route);
                },
              ),
              ListTile(
                title: const Text('Sugerencias'),
                leading: const Icon(Icons.content_paste),
                onTap: () {
                  final route =
                      MaterialPageRoute(builder: (context) => const perfil());
                  Navigator.push(context, route);
                },
              ),
              ListTile(
                title: const Text('Categorias'),
                leading: const Icon(Icons.perm_contact_calendar_rounded),
                onTap: () {
                  final route = MaterialPageRoute(
                      builder: (context) => const categorias());
                  Navigator.push(context, route);
                },
              ),
              ListTile(
                title: const Text('Subcategorias'),
                leading: const Icon(Icons.commit_rounded),
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
              ListTile(
                title: const Text('Configuracion'),
                leading: const Icon(Icons.settings),
                onTap: () {
                  final route =
                      MaterialPageRoute(builder: (context) => const perfil());
                  Navigator.push(context, route);
                },
              ),

              /* ListTile(
              trailing: ElevatedButton(
                onPressed: () {
                  final route =
                      MaterialPageRoute(builder: (context) => inicio());
                  Navigator.push(context, route);
                },
                child: Text("cate"),
              ),
            ),*/
            ],
          ),
        ),
      ),
    );
  }
}
