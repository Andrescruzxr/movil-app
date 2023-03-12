import 'package:flutter/material.dart';
import 'package:signup_page/inicio.dart';



class inicio extends StatefulWidget {
  const inicio({Key? key}) : super(key: key);

  @override
  _MyLoginState createState() => _MyLoginState();
}







void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Enter your email',
            ),
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
              onPressed: () {
                // Validate will return true if the form is valid, or false if
                // the form is invalid.
                if (_formKey.currentState!.validate()) {
                  // Process data.
                }
              },
              child: const Text('Submit'),
            ),
          ),
        ],
      ),
    );
  }
}








class _MyLoginState extends State<inicio> {
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
            padding: const EdgeInsets.only(left: 15, top: 60),
            child: const Text(
              "Realiza tu pregunta",
              style:
                  TextStyle(color: Color.fromARGB(255, 5, 5, 5), fontSize: 35),
            ),
          ),
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(
                  right: 35,
                  left: 35,
                  top: MediaQuery.of(context).size.height * 0.3),
              child: Column(children: [
                TextField(
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                          color: Color.fromARGB(255, 219, 211, 211)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.black),
                    ),
                    hintText: 'Perfil',
                    hintStyle: const TextStyle(color: Colors.black),
                  ),
                ),
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Color.fromARGB(255, 14, 41, 73),
                  child: IconButton(
                    color: Color.fromARGB(255, 239, 240, 237),
                    onPressed: () {
                      Navigator.pushNamed(context, 'perfil');
                    },
                    icon: const Icon(Icons.arrow_forward),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                          color: Color.fromARGB(255, 219, 211, 211)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.black),
                    ),
                    hintText: 'Preguntas sin responder',
                    hintStyle: const TextStyle(color: Colors.black),
                  ),
                ),
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Color.fromARGB(255, 14, 41, 73),
                  child: IconButton(
                    color: Color.fromARGB(255, 239, 240, 237),
                    onPressed: () {
                      Navigator.pushNamed(context, 'perfil');
                    },
                    icon: const Icon(Icons.arrow_forward),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.black),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.black),
                    ),
                    hintText: 'Cultivos',
                    hintStyle: const TextStyle(color: Colors.black),
                  ),
                ),
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Color.fromARGB(255, 14, 41, 73),
                  child: IconButton(
                    color: Color.fromARGB(255, 239, 240, 237),
                    onPressed: () {
                      Navigator.pushNamed(context, 'cultivos');
                    },
                    icon: const Icon(Icons.arrow_forward),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                          color: Color.fromARGB(255, 219, 211, 211)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.black),
                    ),
                    hintText: 'Respuestas',
                    hintStyle: const TextStyle(color: Colors.black),
                  ),
                ),
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Color.fromARGB(255, 14, 41, 73),
                  child: IconButton(
                    color: Color.fromARGB(255, 239, 240, 237),
                    onPressed: () {
                      Navigator.pushNamed(context, 'perfil');
                    },
                    icon: const Icon(Icons.arrow_forward),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                          color: Color.fromARGB(255, 219, 211, 211)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.black),
                    ),
                    hintText: 'Estadisticas',
                    hintStyle: const TextStyle(color: Colors.black),
                  ),
                ),
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Color.fromARGB(255, 14, 41, 73),
                  child: IconButton(
                    color: Color.fromARGB(255, 239, 240, 237),
                    onPressed: () {
                      Navigator.pushNamed(context, 'perfil');
                    },
                    icon: const Icon(Icons.arrow_forward),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                const SizedBox(
                  height: 40,
                ),
              ]),
            ),
          ),
        ]),
      ),
    );
  }
}
