import 'package:flutter/material.dart';
 
import 'package:flutter_componentes_fh/src/pages/home_temp.dart';


void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Componentes App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Componentes'),
        ),
        body: HomePageTemp()
      ),
    );
  }
}