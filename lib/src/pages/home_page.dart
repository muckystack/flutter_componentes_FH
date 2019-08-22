import 'package:flutter/material.dart';
import 'package:flutter_componentes_fh/src/providers/menu_provider.dart';

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
    menuProvider.cargarData().then((opciones) {
      print('Lista');
      print(opciones);
    });

    return ListView(
      children: _listaItem()
    );
  }

  List<Widget> _listaItem() {

    return [
      ListTile(title: Text('Hola mundo'),),
      Divider(),
      ListTile(title: Text('Hola mundo'),),
      Divider(),
      ListTile(title: Text('Hola mundo'),),
      Divider(),
    ];
  }
}