import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {

  double _valorSlider = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sliders'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: <Widget>[
            _crearSlider()
          ],
        ),
      ),
    );
  }

  Widget _crearSlider() {
    return Slider(
      // Muestra de color el slider activo
      activeColor: Colors.indigoAccent,
      // Muestra una label a la hora que es seleccionado el Slider
      label: 'Tamaño de la imagen',
      value: _valorSlider,
      min: 0.0,
      max: 100.0,
      // Crea divisiones de valor en el Slider
      divisions: 10,
      onChanged: (valor) {
        setState(() {
          _valorSlider = valor;
        });
      },
    );
  }
}