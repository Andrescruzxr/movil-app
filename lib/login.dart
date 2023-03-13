import 'package:flutter/material.dart';
import 'package:signup_page/inicio.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  _MyLoginState createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    return Container(




      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/sssss.png'), fit: BoxFit.cover),
      ),


      
      child: Scaffold(
        backgroundColor: Color.fromARGB(0, 168, 151, 52),
        body: Stack(children: [
          Container(
            padding: const EdgeInsets.only(left: 60, top: 100),
            child: const Text(
              "BiENVENIDO\nAYUDAGRO",
              style: TextStyle(
                  color: Color.fromARGB(255, 253, 253, 253), fontSize: 50),
            ),
          ),
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(
                  right: 35,
                  left: 35,
                  // top: MediaQuery.of(context).size.height * 0.5),
                  top: 310),
              child: Column(children: [
                TextField(
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                          color: Color.fromARGB(255, 252, 251, 251)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                          color: Color.fromARGB(255, 238, 236, 236)),
                    ),
                    hintText: 'Correo Electronico',
                    hintStyle: const TextStyle(
                        color: Color.fromARGB(255, 255, 253, 253),
                        fontSize: 20),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),

                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                          color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                          color: Color.fromARGB(255, 255, 253, 253)),
                    ),
                    hintText: 'Contraseña',
                    hintStyle: const TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 20),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),

                //boton de ingreso
                MaterialButton(
                  minWidth: 400.0,
                  height: 40.0,
                  onPressed: () {
                    // Navigator.pushNamed(context, 'inicio');
                  },
                  color: Color.fromARGB(255, 9, 62, 38),
                  child: Text('Continuar',
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 20)),
                ),
                const SizedBox(
                  height: 10,
                ),
                MaterialButton(
                  minWidth: 400.0,
                  height: 40.0,
                  onPressed: () {
                    Navigator.pushNamed(context, 'registrar');
                  },
                  color: Color.fromARGB(255, 9, 62, 38),
                  child: Text('Crear Nuevo Usuario',
                      style: TextStyle(
                          color: Color.fromARGB(255, 251, 250, 250),
                          fontSize: 20)),
                ),
                const SizedBox(
                  height: 10,
                ),

                MaterialButton(
                  minWidth: 400.0,
                  height: 70.0,
                  onPressed: () {
                    Navigator.pushNamed(context, 'inicio');
                  },
                  color: Color.fromARGB(255, 9, 62, 38),
                  child: Text(
                    'HECHAR UN VISTAZO',
                    style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 20),
                  ),
                ),

                /*  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'ingresar sin ser  \nusuario registrado',
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 27,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Color.fromARGB(255, 20, 19, 19),
                      child: IconButton(
                        color: Color.fromARGB(255, 238, 236, 236),
                        onPressed: () {
                          Navigator.pushNamed(context, 'inicio');
                        },
                        icon: const Icon(Icons.arrow_forward),
                      ),
                    ),
                  ],
                ),*/
                const SizedBox(
                  height: 60,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'registrar');
                        },
                        child: const Text(
                          'Registarse',
                          style: TextStyle(
                            //decoration: TextDecoration.underline,
                            fontSize: 18,
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'forgot');
                        },
                        child: const Text(
                          'Has olvidado tu contraseña',
                          style: TextStyle(
                            //decoration: TextDecoration.underline,
                            fontSize: 18,
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                      ),
                    ]),
              ]),
            ),
          ),
        ]),
      ),
    );
  }
}
