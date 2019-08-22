import 'package:flutter/material.dart';
 
// import 'package:flutter_componentes_fh/src/pages/home_temp.dart';
import 'package:flutter_componentes_fh/src/pages/alert_page.dart';
import 'package:flutter_componentes_fh/src/pages/avatar_page.dart';
import 'package:flutter_componentes_fh/src/pages/home_page.dart';


void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Componentes App',
      // home: HomePage()
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => HomePage(),
        'alert': (BuildContext context) => AlertPage(),
        'avatar': (BuildContext context) => AvatarPage(),
      },
    );
  }
}