import 'package:flutter/material.dart';
import 'package:signup_page/foto.dart';

class foto extends StatefulWidget {
  const foto({Key? key}) : super(key: key);

  @override
  _MyfotoState createState() => _MyfotoState();
}

class _MyfotoState extends State<foto> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/inicio3.png'), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Color.fromARGB(0, 168, 151, 52),
        body: Stack(children: [
          Container(
            padding: const EdgeInsets.only(left: 150, top: 30),
            child: const Text(
              "Usuario",
              style:
                  TextStyle(color: Color.fromARGB(255, 5, 5, 5), fontSize: 35),
            ),
          ),
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(
                  right: 35,
                  left: 35,
                  top: MediaQuery.of(context).size.height * 0.1),
              child: Column(children: [
                CircleAvatar(
                  radius: 10,
                  backgroundColor: Color.fromARGB(255, 32, 133, 201),
                  child: IconButton(
                    color: Color.fromARGB(255, 214, 216, 209),
                    onPressed: () {
                      Navigator.pushNamed(context, 'inicio');
                    },
                    icon: const Icon(Icons.insert_photo_rounded),
                    padding: const EdgeInsets.only(
                      left: 1,
                      top: 1,
                    ),
                  ),
                ),
                CircleAvatar(
                  radius: 110,
                  backgroundColor: Color.fromARGB(255, 32, 133, 201),
                  child: IconButton(
                    color: Color.fromARGB(255, 214, 216, 209),
                    onPressed: () {
                      Navigator.pushNamed(context, 'foto');
                    },
                    icon: const Icon(Icons.insert_photo_rounded),
                    padding: const EdgeInsets.only(
                      left: 1,
                      top: 10,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide:
                          const BorderSide(color: Color.fromARGB(255, 5, 5, 5)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide:
                          const BorderSide(color: Color.fromARGB(255, 5, 5, 5)),
                    ),
                    hintText: 'NOMBRE',
                    hintStyle: const TextStyle(color: Colors.black),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide:
                          const BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide:
                          const BorderSide(color: Color.fromARGB(255, 7, 7, 7)),
                    ),
                    hintText: 'DATOS PERSONALES',
                    hintStyle: const TextStyle(color: Colors.black),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide:
                          const BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide:
                          const BorderSide(color: Color.fromARGB(255, 7, 7, 7)),
                    ),
                    hintText: 'DATOS PERSONALES',
                    hintStyle: const TextStyle(color: Colors.black),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide:
                          const BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide:
                          const BorderSide(color: Color.fromARGB(255, 7, 7, 7)),
                    ),
                    hintText: 'DATOS PERSONALES',
                    hintStyle: const TextStyle(color: Colors.black),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide:
                          const BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide:
                          const BorderSide(color: Color.fromARGB(255, 7, 7, 7)),
                    ),
                    hintText: 'DATOS PERSONALES',
                    hintStyle: const TextStyle(color: Colors.black),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide:
                          const BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide:
                          const BorderSide(color: Color.fromARGB(255, 7, 7, 7)),
                    ),
                    hintText: 'DATOS PERSONALES',
                    hintStyle: const TextStyle(color: Colors.black),
                  ),
                ),
              ]),
            ),
          ),
        ]),
      ),
    );
  }
}
