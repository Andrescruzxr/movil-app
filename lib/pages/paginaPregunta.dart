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

  int _counter = 0;
  void _incrementcounter() {
    setState(() {
      _counter++;
    });
  }

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

              TextField(
                  decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: 'search',
                border: OutlineInputBorder(),
              )),

              GestureDetector(
                onTap: _incrementcounter,
                child: Container(
                  width: 160,
                  height: 50,
                  color: Color.fromARGB(255, 7, 161, 58),
                  child: Center(
                    child: Text('presionar $_counter veces'),
                  ),
                ),
              ),
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
                columns: const <DataColumn>[
                  DataColumn(
                    label: Expanded(
                      child: Text(
                        'PREGUNTAS',
                        style: TextStyle(fontStyle: FontStyle.italic),
                      ),
                    ),
                  ),
                  DataColumn(
                    label: Expanded(
                      child: Text(
                        'RESPUESTAS',
                        style: TextStyle(fontStyle: FontStyle.italic),
                      ),
                    ),
                  ),
                  DataColumn(
                    label: Expanded(
                      child: Text(
                        'LIKES',
                        style: TextStyle(fontStyle: FontStyle.italic),
                      ),
                    ),
                  ),
                ],
                rows: <DataRow>[
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text(
                        _text,
                      )),
                      DataCell(Text(_text2)),
                      DataCell(Text('Student')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(
                        GestureDetector(
                          onTap: () {
                            GestureDetector(
                              onTap: _incrementcounter,
                              child: Container(
                                width: 1,
                                height: 5,
                                color: Color.fromARGB(255, 7, 161, 58),
                                child: Center(
                                  child: Text('presionar $_counter veces'),
                                ),
                              ),
                            );
                            // acción cuando se toca la celda
                          },
                        ),
                      ),
                      DataCell(Text(_text2)),
                      DataCell(Text('$_counter')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text(_text)),
                      DataCell(Text(_text2)),
                      DataCell(Text('Associate Professor')),
                    ],
                  ),
                ],
              )

              // Mostrar el texto acumulado
            ],
          ),
        ),
      ),
    );
  }
}
