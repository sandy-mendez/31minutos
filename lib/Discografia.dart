import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class Discografia extends StatefulWidget {
  Discografia({Key key}) : super(key: key);

  @override
  _DiscografiaState createState() => _DiscografiaState();
}

class _DiscografiaState extends State<Discografia> {
  @override
  Widget build(BuildContext context) {
    double ancho = MediaQuery.of(context).size.width;

    double largo = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Discografía',
          style: GoogleFonts.ranchers(fontSize: 30, color: Colors.white),
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
                Container(height: largo * 0.02),
                disco1(ancho, largo, context),
                Expanded(child: Container()),
                disco2(ancho, largo, context),
                Expanded(child: Container()),
                disco3(ancho, largo, context),
                Expanded(child: Container()),
                disco4(ancho, largo, context),
                Expanded(child: Container()),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget disco1(double anchooo, double altooo, BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          width: anchooo,
          height: altooo * 0.2,
          child: Stack(
            children: [
              Positioned(
                top: altooo * 0.02,
                left: anchooo * 0.1,
                child: Container(
                  width: anchooo * 0.850,
                  height: altooo * 0.18,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Color.fromRGBO(0, 0, 0, 1.0)),
                ),
              ),
              //(240, 74, 59, 1.0)
              Positioned(
                top: altooo * 0.001,
                left: anchooo * 0.07,
                child: Container(
                  width: anchooo * 0.850,
                  height: altooo * 0.18,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Color.fromRGBO(240, 74, 59, 1.0)),
                  child: Row(
                    children: [
                      Container(width: 20),
                      Container(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: FadeInImage.assetNetwork(
                            placeholder: "assets/load.gif",
                            image:
                                "https://www.31minutos.cl/wp-content/uploads/2014/02/thumb-cd31minutos.jpg",
                            width: altooo * 0.15,
                            height: altooo * 0.15,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(height: altooo * 0.18, width: anchooo * 0.028),
                      Container(
                          child: Column(children: [
                        Container(
                          height: altooo * 0.004,
                        ),
                        Container(
                            height: altooo * 0.068,
                            width: anchooo * 0.35,
                            child: FittedBox(
                              child: Text(
                                "31 minutos",
                                textAlign: TextAlign.center,
                                style:
                                    GoogleFonts.secularOne(color: Colors.black),
                              ),
                            )), // nombre disco
                        Container(
                          child: FlatButton(
                              onPressed: () {},
                              child: Container(
                                height: altooo * 0.034,
                                width: anchooo * 0.30,
                                child: FittedBox(
                                  child: Text(
                                    "Lista de canciones",
                                    textAlign: TextAlign.center,
                                    style:
                                        GoogleFonts.acme(color: Colors.black),
                                  ),
                                ),
                              )),
                        ), //Lista de canciones
                        Container(
                            height: altooo * 0.030,
                            width: anchooo * 0.35,
                            child: Center(
                              child: FlatButton(
                                  onPressed: _launchURLD1,
                                  child: Image.asset(
                                    "assets/Spotify.png",
                                    fit: BoxFit.contain,
                                  )),
                            )), //spotify
                      ])),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  } //disco 1

  Widget disco2(double anchooo, double altooo, BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          width: anchooo,
          height: altooo * 0.2,
          child: Stack(
            children: [
              Positioned(
                top: altooo * 0.02,
                left: anchooo * 0.1,
                child: Container(
                  width: anchooo * 0.850,
                  height: altooo * 0.18,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Color.fromRGBO(0, 0, 0, 1.0)),
                ),
              ),
              //(240, 74, 59, 1.0)
              Positioned(
                top: altooo * 0.001,
                left: anchooo * 0.07,
                child: Container(
                  width: anchooo * 0.850,
                  height: altooo * 0.18,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Color.fromRGBO(240, 74, 59, 1.0)),
                  child: Row(
                    children: [
                      Container(width: 20),
                      Container(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: FadeInImage.assetNetwork(
                            placeholder: "assets/load.gif",
                            image:
                                "https://www.31minutos.cl/wp-content/uploads/2014/02/03a_31cd2-300x293.jpg",
                            width: altooo * 0.15,
                            height: altooo * 0.15,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(height: altooo * 0.18, width: anchooo * 0.028),
                      Container(
                          child: Column(children: [
                        Container(
                          height: altooo * 0.004,
                        ),
                        Container(
                            height: altooo * 0.068,
                            width: anchooo * 0.35,
                            child: FittedBox(
                              child: Text(
                                "31 canciones de \namor y una canción \nde Guaripolo",
                                textAlign: TextAlign.center,
                                style:
                                    GoogleFonts.secularOne(color: Colors.black),
                              ),
                            )), // nombre disco
                        Container(
                          child: FlatButton(
                              onPressed: () {},
                              child: Container(
                                height: altooo * 0.034,
                                width: anchooo * 0.30,
                                child: FittedBox(
                                  child: Text(
                                    "Lista de canciones",
                                    textAlign: TextAlign.center,
                                    style:
                                        GoogleFonts.acme(color: Colors.black),
                                  ),
                                ),
                              )),
                        ), //Lista de canciones
                        Container(
                            height: altooo * 0.030,
                            width: anchooo * 0.35,
                            child: Center(
                              child: FlatButton(
                                  onPressed: _launchURLD2,
                                  child: Image.asset(
                                    "assets/Spotify.png",
                                    fit: BoxFit.contain,
                                  )),
                            )), //spotify
                      ])),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  } //disco 2

  Widget disco3(double anchooo, double altooo, BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          width: anchooo,
          height: altooo * 0.2,
          child: Stack(
            children: [
              Positioned(
                top: altooo * 0.02,
                left: anchooo * 0.1,
                child: Container(
                  width: anchooo * 0.850,
                  height: altooo * 0.18,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Color.fromRGBO(0, 0, 0, 1.0)),
                ),
              ),
              //(240, 74, 59, 1.0)
              Positioned(
                top: altooo * 0.001,
                left: anchooo * 0.07,
                child: Container(
                  width: anchooo * 0.850,
                  height: altooo * 0.18,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Color.fromRGBO(240, 74, 59, 1.0)),
                  child: Row(
                    children: [
                      Container(width: 20),
                      Container(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: FadeInImage.assetNetwork(
                            placeholder: "assets/load.gif",
                            image:
                                "https://www.31minutos.cl/wp-content/uploads/2014/02/thumb-cdratoncitos.jpg",
                            width: altooo * 0.15,
                            height: altooo * 0.15,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(height: altooo * 0.18, width: anchooo * 0.028),
                      Container(
                          child: Column(children: [
                        Container(
                          height: altooo * 0.004,
                        ),
                        Container(
                            height: altooo * 0.068,
                            width: anchooo * 0.35,
                            child: FittedBox(
                              child: Text(
                                "Ractoncitos",
                                textAlign: TextAlign.center,
                                style:
                                    GoogleFonts.secularOne(color: Colors.black),
                              ),
                            )), // nombre disco
                        Container(
                          child: FlatButton(
                              onPressed: () {},
                              child: Container(
                                height: altooo * 0.034,
                                width: anchooo * 0.30,
                                child: FittedBox(
                                  child: Text(
                                    "Lista de canciones",
                                    textAlign: TextAlign.center,
                                    style:
                                        GoogleFonts.acme(color: Colors.black),
                                  ),
                                ),
                              )),
                        ), //Lista de canciones
                        Container(
                            height: altooo * 0.030,
                            width: anchooo * 0.35,
                            child: Center(
                              child: FlatButton(
                                  onPressed: _launchURLD3,
                                  child: Image.asset(
                                    "assets/Spotify.png",
                                    fit: BoxFit.contain,
                                  )),
                            )), //spotify
                      ])),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  } //disco 3

  Widget disco4(double anchooo, double altooo, BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          width: anchooo,
          height: altooo * 0.2,
          child: Stack(
            children: [
              Positioned(
                top: altooo * 0.02,
                left: anchooo * 0.1,
                child: Container(
                  width: anchooo * 0.850,
                  height: altooo * 0.18,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Color.fromRGBO(0, 0, 0, 1.0)),
                ),
              ),
              //(240, 74, 59, 1.0)
              Positioned(
                top: altooo * 0.001,
                left: anchooo * 0.07,
                child: Container(
                  width: anchooo * 0.850,
                  height: altooo * 0.18,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Color.fromRGBO(240, 74, 59, 1.0)),
                  child: Row(
                    children: [
                      Container(width: 20),
                      Container(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: FadeInImage.assetNetwork(
                            placeholder: "assets/load.gif",
                            image:
                                "https://www.31minutos.cl/wp-content/uploads/2015/07/carcd4-01-640px.png",
                            width: altooo * 0.15,
                            height: altooo * 0.15,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(height: altooo * 0.18, width: anchooo * 0.028),
                      Container(
                          child: Column(children: [
                        Container(
                          height: altooo * 0.004,
                        ),
                        Container(
                            height: altooo * 0.068,
                            width: anchooo * 0.35,
                            child: FittedBox(
                              child: Text(
                                "Arwrarwrirwrarwro",
                                textAlign: TextAlign.center,
                                style:
                                    GoogleFonts.secularOne(color: Colors.black),
                              ),
                            )), // nombre disco
                        Container(
                          child: FlatButton(
                              onPressed: () {},
                              child: Container(
                                height: altooo * 0.034,
                                width: anchooo * 0.30,
                                child: FittedBox(
                                  child: Text(
                                    "Lista de canciones",
                                    textAlign: TextAlign.center,
                                    style:
                                        GoogleFonts.acme(color: Colors.black),
                                  ),
                                ),
                              )),
                        ), //Lista de canciones
                        Container(
                            height: altooo * 0.030,
                            width: anchooo * 0.35,
                            child: Center(
                              child: FlatButton(
                                  onPressed: _launchURLD4,
                                  child: Image.asset(
                                    "assets/Spotify.png",
                                    fit: BoxFit.contain,
                                  )),
                            )), //spotify
                      ])),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  } //disco 4

  //URLS Spotify

  _launchURLD1() async {
    const url =
        'https://open.spotify.com/album/2oBac4CM4HPs8GyPPjCZ0q?utm_source=embed_v2&go=1&play=1&nd=1';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  } //url disco 1

  _launchURLD2() async {
    const url =
        'https://open.spotify.com/album/2MSIDsFyu1qDT21ytvjrX8?utm_source=embed_v2&go=1&play=1&nd=1';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  } //url disco 2

  _launchURLD3() async {
    const url =
        'https://open.spotify.com/album/6qGaTjCgfpyJQr1QeTpDDj?utm_source=embed_v2&go=1&play=1&nd=1';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  } //url disco 3

  _launchURLD4() async {
    const url =
        'https://open.spotify.com/album/3lhrBqbQbfPx4aMfP0pbkK?utm_source=embed_v2&go=1&play=1&nd=1';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  } //url disco 4
}
