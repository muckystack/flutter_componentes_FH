import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Page'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Mostrar alerta'),
          color: Colors.blue,
          textColor: Colors.white,
          shape: StadiumBorder(),
          onPressed: () => _mostrarAlerta(context),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.location_city),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }

  // Función para mostrar alertas
  void _mostrarAlerta(BuildContext context) {
    showDialog(
      context: context,
      // Esta instrucción permite o no(true, false) que se cierre la ventana al hacer click afuera del dialogo
      barrierDismissible: true,
      // Contrulle el dialog
      builder: (context) {

        return AlertDialog(
          // Permite redondear el cuadro de dialogo de la alerta
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          title: Text('Titulo'),
          content: Column(
            // Esta instrucción ajusta la columna para que se adapte al tamaño minimo requerido para que se muestre el contenido
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text('Este el el contenido de la caja de la alerta'),
              FlutterLogo(size: 100.0,)
            ],
          ),
          // Controles (Botones)
          actions: <Widget>[
            FlatButton(
              child: Text('Cancelar'),
              onPressed: () => Navigator.of(context).pop(),
            ),
            FlatButton(
              child: Text('Ok'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );

      }
    );
  }
}