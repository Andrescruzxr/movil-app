import 'package:flutter/material.dart';
import 'package:signup_page/perfil.dart';

class perfil extends StatefulWidget {
  const perfil({Key? key}) : super(key: key);

  @override
  _MyperfilState createState() => _MyperfilState();
}

class _MyperfilState extends State<perfil> {
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
              "Perfil",
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
                  radius: 50,
                  backgroundColor: Colors.grey,
                  child: IconButton(
                    color: Color.fromARGB(255, 214, 216, 209),
                    onPressed: () {
                      Navigator.pushNamed(context, 'foto');
                    },
                    icon: const Icon(Icons.personal_injury_outlined),
                    padding: const EdgeInsets.only(left: 5, top: 5),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
              ]),
            ),
          ),
        ]),
      ),
    );
  }
}
