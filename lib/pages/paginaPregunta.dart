import 'package:flutter/material.dart';

void main() => runApp(paginaPreguntas());

class paginaPreguntas extends StatelessWidget {
  const paginaPreguntas({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Text',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _text = '';

  void _onTextChanged(String value) {
    setState(() {
      _text += value; // Agregar el texto ingresado al texto acumulado
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20,
              ),
              Container(
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "username",
                    hintText: "enter your user name",
                    border: OutlineInputBorder(),
                  ),
                  onChanged:
                      _onTextChanged, // Llamado cuando cambia el texto ingresado
                ),
              ),
              SizedBox(height: 10),
              Text(
                _text,
              ), // Mostrar el texto acumulado
            ],
          ),
        ),
      ),
    );
  }
}
