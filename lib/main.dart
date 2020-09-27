import 'package:flutter/material.dart';
import 'package:wiki_31_minutos/menuPrincipal.dart';
import 'package:wiki_31_minutos/pantalla_carga.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      routes: {
        'pantallaInicio': (BuildContext context) => PantallaInicio(),
        'menuInicio': (BuildContext context) => MenuInicio(),
      },
      initialRoute: 'pantallaInicio',
    );
  }
}
