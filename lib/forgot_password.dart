import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class forgot_password extends StatefulWidget {
  const forgot_password({super.key});

  @override
  State<forgot_password> createState() => _forgot_passwordState();
}

class _forgot_passwordState extends State<forgot_password> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/inicio3.png'),
              fit: BoxFit.cover),
        ),
        child: Scaffold(
          backgroundColor: Color.fromARGB(
            0,
            168,
            151,
            52,
          ),
          body: Stack(children: [
            Container(
              padding: const EdgeInsets.only(left: 35, top: 80),
              child: const Text(
                "Olvide mi contraseña",
                style: TextStyle(
                    color: Color.fromARGB(255, 14, 14, 14), fontSize: 75),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 35, top: 80),
              child: const Text(
                "Olvide",
                style: TextStyle(
                    color: Color.fromARGB(255, 14, 14, 14), fontSize: 75),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    right: 35,
                    left: 35,
                    top: MediaQuery.of(context).size.height * 0.5),
                child: Column(children: [
                  TextField(
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 0, 0, 0)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 0, 0, 0)),
                      ),
                      hintText: 'Correo Electronico',
                      hintStyle:
                          const TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                  ),
                  MaterialButton(
                    minWidth: 400.0,
                    height: 40.0,
                    onPressed: () {
                      Navigator.pushNamed(context, 'login');
                    },
                    color: Color.fromARGB(255, 119, 124, 127),
                    child: Text('Recuperar contraseña',
                        style: TextStyle(color: Color.fromARGB(255, 6, 6, 6))),
                  ),
                ]
                
                ),
              ),
            ),
          ]),
        ));
  }
  
}
