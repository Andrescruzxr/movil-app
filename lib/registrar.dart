import 'package:flutter/material.dart';

class Registrar extends StatefulWidget {
  const Registrar({Key? key}) : super(key: key);

  @override
  _MyRegisterState createState() => _MyRegisterState();
}

class _MyRegisterState extends State<Registrar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Stack(children: [
          Container(
            padding: const EdgeInsets.only(left: 35, top: 80),
            child: const Text(
              "Crea una\nCuenta",
              style:
                  TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 33),
            ),
          ),
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(
                  right: 35,
                  left: 35,
                  top: MediaQuery.of(context).size.height * 0.27),
              child: Column(children: [
                TextField(
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                          color: Color.fromARGB(255, 11, 11, 11)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                          const BorderSide(color: Color.fromARGB(255, 1, 1, 1)),
                    ),
                    hintText: 'Ingresa tu Nombre aqui',
                    hintStyle:
                        const TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextField(
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.black),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                          const BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                    hintText: ' Ingresa tu Correo electronico',
                    hintStyle:
                        const TextStyle(color: Color.fromARGB(255, 3, 2, 2)),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                          const BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                          const BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                    hintText: 'Ingresa una Contraseña',
                    hintStyle:
                        const TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                          const BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                          const BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                    hintText: 'Confirma tu Contraseña',
                    hintStyle:
                        const TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Registrarse',
                        style: TextStyle(
                          color: Color.fromARGB(255, 3, 3, 3),
                          fontSize: 27,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ]),
                const SizedBox(
                  height: 30,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'inicio');
                        },
                        child: const Text(
                          'Ingresar',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontSize: 25,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                        ),
                      ),
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: const Color(0xff4c505b),
                        child: IconButton(
                          color: Colors.white,
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_forward),
                        ),
                      )
                    ]),
              ]),
            ),
          ),
        ]),
      ),
    );
  }
}
