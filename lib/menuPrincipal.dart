import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Personajes.dart';
import 'Episodios.dart';
import 'Discografia.dart';

class MenuInicio extends StatefulWidget {
  MenuInicio({Key key}) : super(key: key);

  @override
  _MenuInicioState createState() => _MenuInicioState();
}

class _MenuInicioState extends State<MenuInicio> {
  @override
  Widget build(BuildContext context) {
    double ancho = MediaQuery.of(context).size.width;

    double largo = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          '31 minutos Wiki',
          style: GoogleFonts.ranchers(fontSize: 30, color: Colors.black),
        ),
        backgroundColor: Color.fromRGBO(255, 171, 102, 1.0),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment(0.0, 0.0),
                    end: Alignment(0.6, 0.99),
                    colors: [
                  Color.fromRGBO(251, 212, 75, 1.0),
                  Color.fromRGBO(251, 140, 0, 1.0)
                ])),
            child: Column(
              children: [
                Expanded(child: Container()),
                menuPersonajes(ancho, largo, context),
                Expanded(child: Container()),
                menuEpisodios(ancho, largo, context),
                Expanded(child: Container()),
                menuDiscografia(ancho, largo, context),
                Expanded(child: Container()),
                Image.asset('assets/piedepagina.png', fit: BoxFit.contain),
                Expanded(child: Container()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget menuPersonajes(double anchooo, double altooo, BuildContext context) {
  return Column(
    children: <Widget>[
      Container(
        width: anchooo,
        height: altooo * 0.15,
        child: Stack(
          children: [
            Positioned(
              top: altooo * 0.014,
              left: anchooo * 0.14,
              child: Container(
                width: anchooo * 0.750,
                height: altooo * 0.10,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Color.fromRGBO(0, 0, 0, 1.0)),
              ),
            ),
            Positioned(
              top: altooo * 0.001,
              left: anchooo * 0.12,
              child: Container(
                width: anchooo * 0.750,
                height: altooo * 0.10,
                child: FlatButton(
                  color: Color.fromRGBO(240, 74, 59, 1.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  onPressed: () {
                    print("Personajes");
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => Personajes(),
                        ));
                  },
                  child: Row(children: [
                    Container(
                      height: altooo * 0.10,
                      width: anchooo * 0.5,
                      child: FittedBox(
                        child: Text(
                          "Personajes",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.secularOne(
                              color: Color.fromRGBO(255, 255, 255, 1.0)),
                        ),
                      ),
                    ),
                    Icon(
                      Icons.person,
                      size: 50,
                      color: Colors.white,
                    ),
                  ]),
                ),
              ),
            )
          ],
        ),
      ), // boton personajes
    ],
  );
}

Widget menuEpisodios(double anchooo, double altooo, BuildContext context) {
  return Column(
    children: <Widget>[
      Container(
        width: anchooo,
        height: altooo * 0.15,
        child: Stack(
          children: [
            Positioned(
              top: altooo * 0.014,
              left: anchooo * 0.14,
              child: Container(
                width: anchooo * 0.750,
                height: altooo * 0.10,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Color.fromRGBO(0, 0, 0, 1.0)),
              ),
            ),
            Positioned(
              top: altooo * 0.001,
              left: anchooo * 0.12,
              child: Container(
                width: anchooo * 0.750,
                height: altooo * 0.10,
                child: FlatButton(
                  color: Color.fromRGBO(240, 74, 59, 1.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  onPressed: () {
                    print("Episodios");
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => Episodios(),
                        ));
                  },
                  child: Row(children: [
                    Container(
                      height: altooo * 0.10,
                      width: anchooo * 0.5,
                      child: FittedBox(
                        child: Text(
                          "Episodios",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.secularOne(
                              color: Color.fromRGBO(255, 255, 255, 1.0)),
                        ),
                      ),
                    ),
                    Icon(
                      Icons.local_play,
                      size: 50,
                      color: Colors.white,
                    ),
                  ]),
                ),
              ),
            )
          ],
        ),
      ), // boton episodios
    ],
  );
}

Widget menuDiscografia(double anchooo, double altooo, BuildContext context) {
  return Column(
    children: <Widget>[
      Container(
        width: anchooo,
        height: altooo * 0.15,
        child: Stack(
          children: [
            Positioned(
              top: altooo * 0.014,
              left: anchooo * 0.14,
              child: Container(
                width: anchooo * 0.750,
                height: altooo * 0.10,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Color.fromRGBO(0, 0, 0, 1.0)),
              ),
            ),
            Positioned(
              top: altooo * 0.001,
              left: anchooo * 0.12,
              child: Container(
                width: anchooo * 0.750,
                height: altooo * 0.10,
                child: FlatButton(
                  color: Color.fromRGBO(240, 74, 59, 1.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  onPressed: () {
                    print("Discografia");
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => Discografia(),
                        ));
                  },
                  child: Row(children: [
                    Container(
                      height: altooo * 0.10,
                      width: anchooo * 0.5,
                      child: FittedBox(
                        child: Text(
                          "Discografía",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.secularOne(
                              color: Color.fromRGBO(255, 255, 255, 1.0)),
                        ),
                      ),
                    ),
                    Icon(
                      Icons.music_note,
                      size: 50,
                      color: Colors.white,
                    ),
                  ]),
                ),
              ),
            )
          ],
        ),
      ), // boton discografía
    ],
  );
}
