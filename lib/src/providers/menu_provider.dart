// Importo solo lo que necesito
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';


class _MenuProvider {
  List<dynamic> opciones = [];

  _MenuProvider() {
    // cargarData();
  }

  // Retirnamos un future de list dynamic
  Future<List<dynamic>> cargarData() async {
    // Leo el archivo json
    final resp = await rootBundle.loadString('data/menu_opts.json');

    Map dataMap = json.decode(resp);

    // print(dataMap['rutas']);

    opciones = dataMap['rutas'];

    return opciones;
  }
}

final menuProvider = new _MenuProvider();