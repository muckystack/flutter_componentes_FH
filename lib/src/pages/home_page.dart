import 'package:flutter/material.dart';
import 'package:flutter_componentes_fh/src/providers/menu_provider.dart';
import 'package:flutter_componentes_fh/src/pages/alert_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes')
      ),
      body: _lista(),
    );
  }

  Widget _lista() {

    // print(menuProvider.opciones);

    return FutureBuilder(
      // Espera la funcion Future
      future: menuProvider.cargarData(),
      // Información por defecto que tendra cuando aun no se ha cargado informción
      initialData: [],
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {

        return ListView(
          children: _listaItem(snapshot.data, context)
        );

      },
    );

  }

  List<Widget> _listaItem(List<dynamic> data, context) {

    final List<Widget> opciones = [];

    data.forEach((opt) {

      final widgetTemp = ListTile(
        title: Text(opt['texto']),
        leading: Icon(Icons.account_circle, color: Colors.blue),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue),
        onTap: () {
          
          // Navegacion a una nueva pantalla
          Navigator.pushNamed(context, opt['ruta']);

        },
      );

      opciones..add(widgetTemp)..add(Divider());

    });

    return opciones;
  }
}