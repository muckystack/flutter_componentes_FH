import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
 
// import 'package:flutter_componentes_fh/src/pages/home_temp.dart';
import 'package:flutter_componentes_fh/src/pages/alert_page.dart';
import 'package:flutter_componentes_fh/src/pages/avatar_page.dart';
import 'package:flutter_componentes_fh/src/pages/home_page.dart';
import 'package:flutter_componentes_fh/src/routes/routes.dart';


void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        // ... app-specific localization delegate[s] here
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en'), // English
        const Locale('es'), // Hebrew
        const Locale.fromSubtags(languageCode: 'zh'), // Chinese *See Advanced Locales below*
        // ... other locales the app supports
      ],
      title: 'Componentes App',
      // home: HomePage()
      initialRoute: '/',
      routes: getApplicationRoutes(),
      onGenerateRoute: (RouteSettings settings) {
        // print('Ruta llamada: $settings.name');
        return MaterialPageRoute(
          builder: (BuildContext context) => AlertPage()
        );
      },
    );
  }
}