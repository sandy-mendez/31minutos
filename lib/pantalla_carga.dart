import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wiki_31_minutos/menuPrincipal.dart';

class PantallaInicio extends StatefulWidget {
  PantallaInicio({Key key}) : super(key: key);

  @override
  _PantallaInicioState createState() => _PantallaInicioState();
}

class _PantallaInicioState extends State<PantallaInicio> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 3,
      navigateAfterSeconds: MenuInicio(),
      title: Text('31 Minutos Wiki', style: GoogleFonts.ranchers(fontSize: 45)),
      image: Image.asset('assets/splash.png'),
      photoSize: 200,
      backgroundColor: Color.fromRGBO(255, 171, 102, 1.0),
    );
  }
}
