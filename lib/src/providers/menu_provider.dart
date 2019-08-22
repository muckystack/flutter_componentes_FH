// Importo solo lo que necesito
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';


class _MenuProvider {
  List<dynamic> opciones = [];

  _MenuProvider() {
    cargarData();
  }

  cargarData() {
    // Leo el archivo json
    rootBundle.loadString('data/menu_opts.json').then((data) {

    Map dataMap = json.decode(data);

    print(dataMap['rutas']);

    opciones = dataMap['rutas'];

    });
  }
}

final menuProvider = new _MenuProvider();