import 'package:flutter/material.dart';
//import 'package:english_words/englihs_words.dart';

class perfil extends StatelessWidget {
  const perfil({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Perfil',
            style: TextStyle(
              fontSize: 44,
              color: Color.fromARGB(255, 0, 0, 0),
              fontFamily: 'roboto',
              fontWeight: FontWeight.bold,
              decorationColor: Color.fromARGB(235, 53, 216, 38),
              decorationThickness: 2,
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Ivan Andres Cruz Rojas",
                style: TextStyle(
                  fontSize: 34,
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontFamily: 'roboto',
                  fontWeight: FontWeight.bold,
                  decorationThickness: 2,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Flexible(
                child: Image.network(
                    'https://holatelcel.com/wp-content/uploads/2015/06/foto-facebook3.jpg'),
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text(
                  "Ivan Andres Cruz Rojas",
                  style: TextStyle(
                    fontSize: 24,
                    color: Color.fromARGB(255, 16, 92, 33),
                    fontFamily: 'roboto',
                    fontWeight: FontWeight.bold,
                    decorationThickness: 2,
                  ),
                ),
                subtitle: Text(
                  "Centro De Teleinformatica y Produucion Industrial",
                  style: TextStyle(
                    fontSize: 14,
                    color: Color.fromARGB(255, 66, 60, 60),
                    fontFamily: 'roboto',
                    fontWeight: FontWeight.bold,
                    decorationThickness: 2,
                  ),
                ),
              ),
              /*Flexible(
                child: Card(
                  child: Column(
                    children: [
                      ListTile(
                        title: Text("nombre de usuario"),
                        subtitle: Text("biografia"),
                      ),
                      Image.network(
                          'https://assets.stickpng.com/thumbs/585e4bc4cb11b227491c3395.png'),
                    ],
                  ),
                ),
              ),*/
              Flexible(
                child: DataTable(
                  columns: [
                    DataColumn(label: Text('NOMBRES')),
                    DataColumn(label: Text('APELLIDOS')),
                    DataColumn(label: Text('DIRECCION')),
                  ],
                  rows: [
                    DataRow(cells: [
                      DataCell(Text('Ivan Andres ')),
                      DataCell(Text('Cruz Rojas')),
                      DataCell(Text('Popayan')),
                    ]),
                  ],
                  columnSpacing: 20,
                  dividerThickness: 5,
                ),
              ),
              Flexible(
                child: DataTable(
                  columns: [
                    DataColumn(label: Text('CORREO ')),
                    DataColumn(label: Text('Número de teléfono')),
                  ],
                  rows: [
                    DataRow(cells: [
                      DataCell(Text('andre2@gmail.com')),
                      DataCell(Text('xxxxxxxxxxxxx')),
                    ]),
                  ],
                  columnSpacing: 20,
                  dividerThickness: 5,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
