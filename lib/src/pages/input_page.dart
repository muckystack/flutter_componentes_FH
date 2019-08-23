import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  InputPage({Key key}) : super(key: key);

  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  String _nombre = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs de texto'),
      ),
      body: ListView(
        // Padding del listview
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        children: <Widget>[
          _crearInput(),
          Divider(),
          _crearPersona(),
        ],
      ),
    );
  }

  Widget _crearInput() {

    // El textfield trabaja de manera independiente
    return TextField(
      // Aparece seleccionado el campo al entrar a la ventana
      autofocus: false,
      textCapitalization: TextCapitalization.sentences,
      // Incluye mas decoraciones para el input
      decoration: InputDecoration(
        // Modificaciones del borde
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        counter: Text('Letras ${_nombre.length}'),
        // Texto de sugerencia
        hintText: 'Nombre de la persona',
        labelText: 'Nombre',
        helperText: 'Solo es el nombre',
        suffixIcon: Icon(Icons.accessibility),
        icon: Icon(Icons.account_circle)
      ),
      onChanged: (valor) {
        setState(() {
          _nombre = valor;
        });
        // print(valor);
      },
    );

  }

  Widget _crearPersona() {

    return ListTile(
      title: Text('Nombre es: $_nombre'),
    );

  }
}