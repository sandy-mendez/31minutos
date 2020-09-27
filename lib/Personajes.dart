//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Personajes extends StatefulWidget {
  Personajes({Key key}) : super(key: key);

  @override
  _PersonajesState createState() => _PersonajesState();
}

class _PersonajesState extends State<Personajes> {
  @override
  Widget build(BuildContext context) {
    double ancho = MediaQuery.of(context).size.width;

    double largo = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Personajes',
          style: GoogleFonts.secularOne(fontSize: 30, color: Colors.white),
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
            child: listaPersonajes(ancho, largo, context),
          )
        ],
      ),
    );
  }

  Widget listaPersonajes(anchooo, altooo, BuildContext context) {
    return Center(
      child: Container(
        width: anchooo * 0.90,
        height: altooo * 0.85,
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            //
            Container(
              //margin: EdgeInsets.all(5),
              width: anchooo * 0.5,
              decoration: BoxDecoration(
                  color: Colors.amber[700],
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 3.0, color: Colors.black54)),

              child: Row(
                children: [
                  Container(width: anchooo * 0.019),
                  Container(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: FadeInImage.assetNetwork(
                        placeholder: "assets/load.gif",
                        image:
                            "https://www.31minutos.cl/wp-content/uploads/2014/01/thumb-tulio2-300x300.png",
                        width: 120,
                        height: 140,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    child: Column(children: [
                      Container(
                        width: anchooo * 0.4,
                        height: altooo * 0.065,
                        child: FittedBox(
                          child: Text(
                            "Tulio Triviño",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.secularOne(
                                color: Color.fromRGBO(250, 250, 250, 1.0)),
                          ),
                        ),
                      ),
                      Container(
                        width: anchooo * 0.5,
                        height: altooo * 0.1,
                        child: FittedBox(
                          child: Text(
                            "Tulio es el rostro principal  \n    del programa. Es millonario  \n    y proviene de una familia...",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.secularOne(
                                color: Color.fromRGBO(0, 0, 0, 1.0)),
                          ),
                        ),
                      ),
                      Container(
                        width: anchooo * 0.4,
                        height: altooo * 0.05,
                        child: FlatButton(
                            onPressed: () {},
                            child: FittedBox(
                              child: Text(
                                "Leer mas...",
                                style: TextStyle(
                                  color: Colors.blue[900],
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            )),
                      )
                    ]),
                  )
                ],
              ),
            ), //Tulio
            //
            Container(height: 20),
            //
            Container(
              //margin: EdgeInsets.all(5),
              width: anchooo * 0.5,
              decoration: BoxDecoration(
                  color: Colors.amber[700],
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 3.0, color: Colors.black54)),

              child: Row(
                children: [
                  Container(width: anchooo * 0.019),
                  Container(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: FadeInImage.assetNetwork(
                        placeholder: "assets/load.gif",
                        image:
                            "https://www.31minutos.cl/wp-content/uploads/2014/02/thumb-bodoque-300x300.jpg",
                        width: 120,
                        height: 140,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    child: Column(children: [
                      Container(
                        width: anchooo * 0.4,
                        height: altooo * 0.065,
                        child: FittedBox(
                          child: Text(
                            "Juan Carlos\n Bodoque",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.secularOne(
                                color: Color.fromRGBO(250, 250, 250, 1.0)),
                          ),
                        ),
                      ),
                      Container(
                        width: anchooo * 0.5,
                        height: altooo * 0.1,
                        child: FittedBox(
                          child: Text(
                            "Bodoque es malhumorado, \n  taciturno, bohemio, ingenioso, \n    apostador y poeta...",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.secularOne(
                                color: Color.fromRGBO(0, 0, 0, 1.0)),
                          ),
                        ),
                      ),
                      Container(
                        width: anchooo * 0.4,
                        height: altooo * 0.05,
                        child: FlatButton(
                            onPressed: () {},
                            child: FittedBox(
                              child: Text(
                                "Leer mas...",
                                style: TextStyle(
                                  color: Colors.blue[900],
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            )),
                      )
                    ]),
                  )
                ],
              ),
            ), //Juan Carlos Bodoque

            //
            Container(height: 20),
            //
            Container(
              //margin: EdgeInsets.all(5),
              width: anchooo * 0.5,
              decoration: BoxDecoration(
                  color: Colors.amber[700],
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 3.0, color: Colors.black54)),

              child: Row(
                children: [
                  Container(width: anchooo * 0.019),
                  Container(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: FadeInImage.assetNetwork(
                        placeholder: "assets/load.gif",
                        image:
                            "https://www.31minutos.cl/wp-content/uploads/2014/02/thumb-juanin.png",
                        width: 120,
                        height: 140,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    child: Column(children: [
                      Container(
                        width: anchooo * 0.4,
                        height: altooo * 0.065,
                        child: FittedBox(
                          child: Text(
                            "Juanín Juan\n Harry",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.secularOne(
                                color: Color.fromRGBO(250, 250, 250, 1.0)),
                          ),
                        ),
                      ),
                      Container(
                        width: anchooo * 0.5,
                        height: altooo * 0.1,
                        child: FittedBox(
                          child: Text(
                            "El productor de 31 minutos,\ntrabajólico, tierno, dulce y \n leal. Conoce a sus ...",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.secularOne(
                                color: Color.fromRGBO(0, 0, 0, 1.0)),
                          ),
                        ),
                      ),
                      Container(
                        width: anchooo * 0.4,
                        height: altooo * 0.05,
                        child: FlatButton(
                            onPressed: () {},
                            child: FittedBox(
                              child: Text(
                                "Leer mas...",
                                style: TextStyle(
                                  color: Colors.blue[900],
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            )),
                      )
                    ]),
                  )
                ],
              ),
            ), //Juanin
            //
            //
            Container(height: 20),
            //
            Container(
              //margin: EdgeInsets.all(5),
              width: anchooo * 0.5,
              decoration: BoxDecoration(
                  color: Colors.amber[700],
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 3.0, color: Colors.black54)),

              child: Row(
                children: [
                  Container(width: anchooo * 0.019),
                  Container(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: FadeInImage.assetNetwork(
                        placeholder: "assets/load.gif",
                        image:
                            "https://www.31minutos.cl/wp-content/uploads/2014/02/thumb-patana.png",
                        width: 120,
                        height: 140,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    child: Column(children: [
                      Container(
                        width: anchooo * 0.4,
                        height: altooo * 0.065,
                        child: FittedBox(
                          child: Text(
                            "Patana Tufillo",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.secularOne(
                                color: Color.fromRGBO(250, 250, 250, 1.0)),
                          ),
                        ),
                      ),
                      Container(
                        width: anchooo * 0.5,
                        height: altooo * 0.1,
                        child: FittedBox(
                          child: Text(
                            "Patana es una niña astuta, \ninteligente, sensata, cariñosa,\nsensible y preocupada por...",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.secularOne(
                                color: Color.fromRGBO(0, 0, 0, 1.0)),
                          ),
                        ),
                      ),
                      Container(
                        width: anchooo * 0.4,
                        height: altooo * 0.05,
                        child: FlatButton(
                            onPressed: () {},
                            child: FittedBox(
                              child: Text(
                                "Leer mas...",
                                style: TextStyle(
                                  color: Colors.blue[900],
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            )),
                      )
                    ]),
                  )
                ],
              ),
            ), //Patana

            //
            Container(height: 20),
            //
            Container(
              //margin: EdgeInsets.all(5),
              width: anchooo * 0.5,
              decoration: BoxDecoration(
                  color: Colors.amber[700],
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 3.0, color: Colors.black54)),

              child: Row(
                children: [
                  Container(width: anchooo * 0.019),
                  Container(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: FadeInImage.assetNetwork(
                        placeholder: "assets/load.gif",
                        image:
                            "https://www.31minutos.cl/wp-content/uploads/2014/02/thumb-mariohugo.jpg",
                        width: 120,
                        height: 140,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    child: Column(children: [
                      Container(
                        width: anchooo * 0.4,
                        height: altooo * 0.065,
                        child: FittedBox(
                          child: Text(
                            "Mario Hugo",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.secularOne(
                                color: Color.fromRGBO(250, 250, 250, 1.0)),
                          ),
                        ),
                      ),
                      Container(
                        width: anchooo * 0.5,
                        height: altooo * 0.1,
                        child: FittedBox(
                          child: Text(
                            "Mario Hugo es latero, afectado\nen el hablar (con un tono de \nvoz impostado para parecer...",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.secularOne(
                                color: Color.fromRGBO(0, 0, 0, 1.0)),
                          ),
                        ),
                      ),
                      Container(
                        width: anchooo * 0.4,
                        height: altooo * 0.05,
                        child: FlatButton(
                            onPressed: () {},
                            child: FittedBox(
                              child: Text(
                                "Leer mas...",
                                style: TextStyle(
                                  color: Colors.blue[900],
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            )),
                      )
                    ]),
                  )
                ],
              ),
            ), //Mario Hugo

            //
            Container(height: 20),
            //
            Container(
              //margin: EdgeInsets.all(5),
              width: anchooo * 0.5,
              decoration: BoxDecoration(
                  color: Colors.amber[700],
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 3.0, color: Colors.black54)),

              child: Row(
                children: [
                  Container(width: anchooo * 0.019),
                  Container(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: FadeInImage.assetNetwork(
                        placeholder: "assets/load.gif",
                        image:
                            "https://www.31minutos.cl/wp-content/uploads/2014/01/thumb-policarpo2.png",
                        width: 120,
                        height: 140,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    child: Column(children: [
                      Container(
                        width: anchooo * 0.4,
                        height: altooo * 0.065,
                        child: FittedBox(
                          child: Text(
                            "  Policarpo  ",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.secularOne(
                                color: Color.fromRGBO(250, 250, 250, 1.0)),
                          ),
                        ),
                      ),
                      Container(
                        width: anchooo * 0.5,
                        height: altooo * 0.1,
                        child: FittedBox(
                          child: Text(
                            " Policarpo es el excéntrico y \n solitario comentarista de \n espectáculos. Está a cargo...",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.secularOne(
                                color: Color.fromRGBO(0, 0, 0, 1.0)),
                          ),
                        ),
                      ),
                      Container(
                        width: anchooo * 0.4,
                        height: altooo * 0.05,
                        child: FlatButton(
                            onPressed: () {},
                            child: FittedBox(
                              child: Text(
                                "Leer mas...",
                                style: TextStyle(
                                  color: Colors.blue[900],
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            )),
                      )
                    ]),
                  )
                ],
              ),
            ), //Policarpo

            //

            Container(height: 20),

            //
            Container(
              //margin: EdgeInsets.all(5),
              width: anchooo * 0.5,
              decoration: BoxDecoration(
                  color: Colors.amber[700],
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 3.0, color: Colors.black54)),

              child: Row(
                children: [
                  Container(width: anchooo * 0.019),
                  Container(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: FadeInImage.assetNetwork(
                        placeholder: "assets/load.gif",
                        image:
                            "https://www.31minutos.cl/wp-content/uploads/2014/02/thumb-rombosman.png",
                        width: 120,
                        height: 140,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    child: Column(children: [
                      Container(
                        width: anchooo * 0.4,
                        height: altooo * 0.065,
                        child: FittedBox(
                          child: Text(
                            "Calcetín con \nRombosman",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.secularOne(
                                color: Color.fromRGBO(250, 250, 250, 1.0)),
                          ),
                        ),
                      ),
                      Container(
                        width: anchooo * 0.5,
                        height: altooo * 0.1,
                        child: FittedBox(
                          child: Text(
                            " Es un popular superhéroe que  \n  siempre defiende los derechos\n  del niño. Solo es vencido en\n las encuestas por “El soquete... ",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.secularOne(
                                color: Color.fromRGBO(0, 0, 0, 1.0)),
                          ),
                        ),
                      ),
                      Container(
                        width: anchooo * 0.4,
                        height: altooo * 0.05,
                        child: FlatButton(
                            onPressed: () {},
                            child: FittedBox(
                              child: Text(
                                "Leer mas...",
                                style: TextStyle(
                                  color: Colors.blue[900],
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            )),
                      )
                    ]),
                  )
                ],
              ),
            ), //Calcetín con

            //

            Container(height: 20),
            //
            Container(
              //margin: EdgeInsets.all(5),
              width: anchooo * 0.5,
              decoration: BoxDecoration(
                  color: Colors.amber[700],
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 3.0, color: Colors.black54)),

              child: Row(
                children: [
                  Container(width: anchooo * 0.019),
                  Container(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: FadeInImage.assetNetwork(
                        placeholder: "assets/load.gif",
                        image:
                            "https://www.31minutos.cl/wp-content/uploads/2014/02/thumb-guaripolo.png",
                        width: 120,
                        height: 140,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    child: Column(children: [
                      Container(
                        width: anchooo * 0.4,
                        height: altooo * 0.065,
                        child: FittedBox(
                          child: Text(
                            "Guaripolo",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.secularOne(
                                color: Color.fromRGBO(250, 250, 250, 1.0)),
                          ),
                        ),
                      ),
                      Container(
                        width: anchooo * 0.5,
                        height: altooo * 0.1,
                        child: FittedBox(
                          child: Text(
                            " Es un personaje que apareció\n  de un momento a otro en el \n  programa y sin embargo...",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.secularOne(
                                color: Color.fromRGBO(0, 0, 0, 1.0)),
                          ),
                        ),
                      ),
                      Container(
                        width: anchooo * 0.4,
                        height: altooo * 0.05,
                        child: FlatButton(
                            onPressed: () {},
                            child: FittedBox(
                              child: Text(
                                "Leer mas...",
                                style: TextStyle(
                                  color: Colors.blue[900],
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            )),
                      )
                    ]),
                  )
                ],
              ),
            ), //Guaripolo

            //
            Container(height: 20),
            //
            Container(
              //margin: EdgeInsets.all(5),
              width: anchooo * 0.5,
              decoration: BoxDecoration(
                  color: Colors.amber[700],
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 3.0, color: Colors.black54)),

              child: Row(
                children: [
                  Container(width: anchooo * 0.019),
                  Container(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: FadeInImage.assetNetwork(
                        placeholder: "assets/load.gif",
                        image:
                            "https://www.31minutos.cl/wp-content/uploads/2014/02/thumb-huachimingo.png",
                        width: 120,
                        height: 140,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    child: Column(children: [
                      Container(
                        width: anchooo * 0.4,
                        height: altooo * 0.065,
                        child: FittedBox(
                          child: Text(
                            "Huachimingo",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.secularOne(
                                color: Color.fromRGBO(250, 250, 250, 1.0)),
                          ),
                        ),
                      ),
                      Container(
                        width: anchooo * 0.5,
                        height: altooo * 0.1,
                        child: FittedBox(
                          child: Text(
                            "  Milenario animal. Pariente \n  lejano del conejo y alcachofa.\n  Estuvo perdido durante miles...",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.secularOne(
                                color: Color.fromRGBO(0, 0, 0, 1.0)),
                          ),
                        ),
                      ),
                      Container(
                        width: anchooo * 0.4,
                        height: altooo * 0.05,
                        child: FlatButton(
                            onPressed: () {},
                            child: FittedBox(
                              child: Text(
                                "Leer mas...",
                                style: TextStyle(
                                  color: Colors.blue[900],
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            )),
                      )
                    ]),
                  )
                ],
              ),
            ), //Huachimingo

            //
            Container(height: 20),
            //
            Container(
              //margin: EdgeInsets.all(5),
              width: anchooo * 0.5,
              decoration: BoxDecoration(
                  color: Colors.amber[700],
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 3.0, color: Colors.black54)),

              child: Row(
                children: [
                  Container(width: anchooo * 0.019),
                  Container(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: FadeInImage.assetNetwork(
                        placeholder: "assets/load.gif",
                        image:
                            "https://www.31minutos.cl/wp-content/uploads/2014/01/thumb-tramoyas1-300x300.png",
                        width: 120,
                        height: 140,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    child: Column(children: [
                      Container(
                        width: anchooo * 0.4,
                        height: altooo * 0.065,
                        child: FittedBox(
                          child: Text(
                            "  Tramoyas  ",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.secularOne(
                                color: Color.fromRGBO(250, 250, 250, 1.0)),
                          ),
                        ),
                      ),
                      Container(
                        width: anchooo * 0.5,
                        height: altooo * 0.1,
                        child: FittedBox(
                          child: Text(
                            "  Los Tramoyas son una extraña\n  especie de funcionarios que \n   supuestamente hacen el ...",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.secularOne(
                                color: Color.fromRGBO(0, 0, 0, 1.0)),
                          ),
                        ),
                      ),
                      Container(
                        width: anchooo * 0.4,
                        height: altooo * 0.05,
                        child: FlatButton(
                            onPressed: () {},
                            child: FittedBox(
                              child: Text(
                                "Leer mas...",
                                style: TextStyle(
                                  color: Colors.blue[900],
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            )),
                      )
                    ]),
                  )
                ],
              ),
            ), //Tramoyas
          ],
        ),
      ),
    );
  }
}
