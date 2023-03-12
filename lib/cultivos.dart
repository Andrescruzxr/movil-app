import 'package:flutter/material.dart';
import 'package:signup_page/cultivos.dart';

class cultivos extends StatefulWidget {
  const cultivos({Key? key}) : super(key: key);

  @override
  _MyfotoState createState() => _MyfotoState();
}

class _MyfotoState extends State<cultivos> {
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
            padding: const EdgeInsets.only(left: 50, top: 30),
            child: const Text(
              "Usted esta en \nCultivos",
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
