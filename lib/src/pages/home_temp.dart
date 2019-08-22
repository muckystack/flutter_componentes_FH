import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  // const HomePageTemp({Key key}) : super(key: key);

  final opciones = ['Uno','Dos','Tres','Cuatro','Cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp'),
      ),
      body: ListView(
        // Mando llamar mi metodo para tener los widgets
        children: _crearItems()
      ),
    );
  }

  // Metodo que regresa una lsita de widgets
  List<Widget> _crearItems() {

    // Creo una lista de widgets dinamica, ya que no le paso el tamaño de mi lista
    List<Widget> lista = List<Widget>();

    // Creo un for que recorre el arreglo global de opciones
    for (String opt in opciones) {
      
      // Creo mi widget con los valores de opt
      final tempWidget = ListTile(
        title: Text(opt),
      );

      // OPERADOR DE CASCADA
      // Inserto el widget y Divider a mi lista de widgets
      lista..add(tempWidget)..add(Divider());

    }

    return lista;
  }
}