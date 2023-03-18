import 'package:flutter/material.dart';
import 'package:signup_page/pages/cerrar_sesion.dart';
import 'package:signup_page/perfil.dart';

List<String> items = [
  'Combustibles y Lubricantes',
  'Insumos Agrícolas',
  'Insumos Producción Animal',
  'Riego',
  'Maquinaria y Vehiculoso',
  'Artículos Rurales y Herramientas',
  'Hacienda Vacuna',
  'Campos y Chacras'
];

class categorias extends StatelessWidget {
  const categorias({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Categorias'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text(items[index]),
              subtitle: Text('Description de ${items[index]}'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                final route =
                    MaterialPageRoute(builder: (context) => const perfil());
                Navigator.push(context, route);
              });
        },
      ),
    );
  }
}
