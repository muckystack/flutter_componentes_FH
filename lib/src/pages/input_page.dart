import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  InputPage({Key key}) : super(key: key);

  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  String _nombre = '';
  String _email = '';
  String _fecha = '';

  String _opcionSeleccionada = 'Volar';

  List<String> _poderes = ['Volar', 'Rayos x', 'Super aliento', 'Super fuerza'];

  // Permite editar el contendio de un input
  TextEditingController _inputFieldDateController = TextEditingController();

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
          _crearEmail(),
          Divider(),
          _crearPassword(),
          Divider(),
          _crearFecha(context),
          Divider(),
          _crearDropDown(),
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

  Widget _crearEmail() {
    // El textfield trabaja de manera independiente
    return TextField(
      // Define el tipo de input que sera
      keyboardType: TextInputType.emailAddress,
      // Incluye mas decoraciones para el input
      decoration: InputDecoration(
        // Modificaciones del borde
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        counter: Text('Letras ${_nombre.length}'),
        // Texto de sugerencia
        hintText: 'Email',
        labelText: 'Email',
        suffixIcon: Icon(Icons.alternate_email),
        icon: Icon(Icons.email)
      ),
      onChanged: (valor) => setState(() {
          _email = valor;
      }),
    );
  }

  Widget _crearPassword() {
    // El textfield trabaja de manera independiente
    return TextField(
      // Crea mi input con la información oculta
      obscureText: true,
      // Incluye mas decoraciones para el input
      decoration: InputDecoration(
        // Modificaciones del borde
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        counter: Text('Letras ${_nombre.length}'),
        // Texto de sugerencia
        hintText: 'Password',
        labelText: 'Password',
        suffixIcon: Icon(Icons.lock_open),
        icon: Icon(Icons.lock)
      ),
      onChanged: (valor) => setState(() {
          _email = valor;
      }),
    );
  }

  Widget _crearFecha(BuildContext context) {
    // El textfield trabaja de manera independiente
    return TextField(
      enableInteractiveSelection: false,
      controller: _inputFieldDateController,
      // Incluye mas decoraciones para el input
      decoration: InputDecoration(
        // Modificaciones del borde
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        counter: Text('Letras ${_nombre.length}'),
        // Texto de sugerencia
        hintText: 'Fecha de nacimiento',
        labelText: 'Fecha de nacimiento',
        suffixIcon: Icon(Icons.calendar_view_day),
        icon: Icon(Icons.calendar_today)
      ),
      onTap: () {

        FocusScope.of(context).requestFocus(new FocusNode());
        _selectDate(context);

      },
    );
  }

  _selectDate(BuildContext context) async {

    DateTime picked = await showDatePicker(
      context: context,
      initialDate: new DateTime.now(),
      firstDate: new DateTime(2018),
      lastDate: new DateTime(2025),
      locale: Locale('es', 'ES')
    );

    if(picked != null) {
      setState(() {
        _fecha = picked.toString();
        _inputFieldDateController.text = _fecha;
      });
    }

  }

  Widget _crearDropDown() {
    return Row(
      children: <Widget>[
        Icon(Icons.select_all),
        SizedBox(width: 30.0,),
        Expanded(
          child:  DropdownButton(
            value: _opcionSeleccionada,
            items: getOpcionesDropDown(),
            onChanged: (opt) {
              setState(() {
                _opcionSeleccionada = opt;
              });
            },
          ),
        )
      ],
    );
    
    
  }

  List<DropdownMenuItem<String>> getOpcionesDropDown() {

    List<DropdownMenuItem<String>> lista = List();

    _poderes.forEach((poder) {

      lista.add(DropdownMenuItem(
        // Es lo que se muestra
        child: Text(poder),
        value: poder,
      ));

    });

    return lista;
  }

  Widget _crearPersona() {

    return ListTile(
      title: Text('Nombre es: $_nombre'),
      subtitle: Text('Email es: $_email'),
      trailing: Text(_opcionSeleccionada),
    );

  }



}

