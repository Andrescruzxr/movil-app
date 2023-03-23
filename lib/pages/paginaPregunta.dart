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
  String _text2 = '';

  void _onTextChanged(String value) {
    setState(() {
      _text = value; // Agregar el texto ingresado al texto acumulado
    });
  }

  void _respuesta(String value) {
    setState(() {
      _text2 = value; // Agregar el texto ingresado al texto acumulado
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
                    filled: true,
                    fillColor: Color.fromARGB(255, 37, 180, 104),
                    labelText: "PREGUNTA",
                    hintText: "digite aqui su pregunta",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                  ),
                  onChanged:
                      _onTextChanged, // Llamado cuando cambia el texto ingresado
                ),
              ),
              SizedBox(height: 8),

              Container(
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(255, 37, 180, 104),
                    labelText: "RESPUESTA",
                    hintText: "digite aqui su Respuesta",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                  ),
                  onChanged:
                      _respuesta, // Llamado cuando cambia el texto ingresado
                ),
              ),
              SizedBox(height: 8),

              DataTable(
                columns: [
                  DataColumn(label: Text('PREGUNTAS')),
                  DataColumn(label: Text('RESPUESTAS')),
                ],
                rows: [
                  DataRow(cells: [
                    DataCell(Text(
                      _text,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 90, 23, 7),
                      ),
                    )),
                    DataCell(Text(_text2)),
                  ]),
                ],
                columnSpacing: 20,
                dividerThickness: 5,
              ), // Mostrar el texto acumulado
            ],
          ),
        ),
      ),
    );
  }
}
