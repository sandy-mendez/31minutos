import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Episodios extends StatefulWidget {
  @override
  _EpisodiosState createState() => _EpisodiosState();
}

class _EpisodiosState extends State<Episodios> {
  int _value = 1;
  String temporada = "1";

  @override
  Widget build(BuildContext context) {
    double ancho = MediaQuery.of(context).size.width;

    double largo = MediaQuery.of(context).size.height;

    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Episodios',
            style: GoogleFonts.secularOne(fontSize: 30, color: Colors.white),
          ),
          backgroundColor: Color.fromRGBO(255, 171, 102, 1.0),
        ),
        body: Stack(children: [
          Container(
            width: ancho,
            height: largo,
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
                Container(
                  height: largo * 0.03,
                ),
                Container(
                  width: ancho * 0.4,
                  height: largo * 0.08,
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.all(20.0),
                  child: DropdownButton(
                    value: _value,
                    items: [
                      DropdownMenuItem(
                        child: Container(
                            height: largo * 0.08,
                            width: ancho * 0.20,
                            child: FittedBox(
                                child: Text("Temporada 1",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.secularOne(
                                        color: Color.fromRGBO(0, 0, 0, 1.0))))),
                        value: 1,
                      ),
                      DropdownMenuItem(
                        child: Container(
                            height: largo * 0.08,
                            width: ancho * 0.20,
                            child: FittedBox(
                                child: Text("Temporada 2",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.secularOne(
                                        color: Color.fromRGBO(0, 0, 0, 1.0))))),
                        value: 2,
                      ),
                      DropdownMenuItem(
                        child: Container(
                            height: largo * 0.08,
                            width: ancho * 0.20,
                            child: FittedBox(
                                child: Text("Temporada 3",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.secularOne(
                                        color: Color.fromRGBO(0, 0, 0, 1.0))))),
                        value: 3,
                      ),
                      DropdownMenuItem(
                        child: Container(
                            height: largo * 0.08,
                            width: ancho * 0.20,
                            child: FittedBox(
                                child: Text("Temporada 4",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.secularOne(
                                        color: Color.fromRGBO(0, 0, 0, 1.0))))),
                        value: 4,
                      ),
                    ],
                    onChanged: (value) {
                      setState(
                        () {
                          _value = value;
                          temporada = value.toString();
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: largo * 0.14,
            left: ancho * 0.08,
            child: Container(
              child: temporadas(temporada, ancho, largo),
            ),
          )
        ]));
  }

  Widget temporadas(caos, anchooo, altooo) {
    switch (caos) {
      case "1":
        return Center(
          child: Container(
            width: anchooo * 0.85,
            height: altooo * 0.7,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.amber[700],
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 3.0, color: Colors.black54)),
                  child: Row(
                    children: [
                      IconButton(
                          icon: Icon(
                            Icons.play_circle_filled,
                            size: 30,
                          ),
                          onPressed: () {}),
                      Text("Episodio 1: El comienzo",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.secularOne(
                              color: Color.fromRGBO(0, 0, 0, 1.0),
                              fontSize: 20)),
                    ],
                  ),
                ),
                Container(
                  height: altooo * 0.02,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.amber[700],
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 3.0, color: Colors.black54)),
                  child: Row(
                    children: [
                      IconButton(
                          icon: Icon(
                            Icons.play_circle_filled,
                            size: 30,
                          ),
                          onPressed: () {}),
                      Text("Episodio 2: El árbol furioso",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.secularOne(
                              color: Color.fromRGBO(0, 0, 0, 1.0),
                              fontSize: 20)),
                    ],
                  ),
                ),
                Container(
                  height: altooo * 0.02,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.amber[700],
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 3.0, color: Colors.black54)),
                  child: Row(
                    children: [
                      IconButton(
                          icon: Icon(
                            Icons.play_circle_filled,
                            size: 30,
                          ),
                          onPressed: () {}),
                      Text("Episodio 3: Guerra en el mar...",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.secularOne(
                              color: Color.fromRGBO(0, 0, 0, 1.0),
                              fontSize: 20)),
                    ],
                  ),
                ),
                Container(
                  height: altooo * 0.02,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.amber[700],
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 3.0, color: Colors.black54)),
                  child: Row(
                    children: [
                      IconButton(
                          icon: Icon(
                            Icons.play_circle_filled,
                            size: 30,
                          ),
                          onPressed: () {}),
                      Text("Episodio 4: Benjamín Listillo",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.secularOne(
                              color: Color.fromRGBO(0, 0, 0, 1.0),
                              fontSize: 20)),
                    ],
                  ),
                ),
                Container(
                  height: altooo * 0.02,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.amber[700],
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 3.0, color: Colors.black54)),
                  child: Row(
                    children: [
                      IconButton(
                          icon: Icon(
                            Icons.play_circle_filled,
                            size: 30,
                          ),
                          onPressed: () {}),
                      Text("Episodio 5: Mounstro Chupa...",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.secularOne(
                              color: Color.fromRGBO(0, 0, 0, 1.0),
                              fontSize: 20)),
                    ],
                  ),
                ),
                Container(
                  height: altooo * 0.02,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.amber[700],
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 3.0, color: Colors.black54)),
                  child: Row(
                    children: [
                      IconButton(
                          icon: Icon(
                            Icons.play_circle_filled,
                            size: 30,
                          ),
                          onPressed: () {}),
                      Text("Episodio 6: El experimento",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.secularOne(
                              color: Color.fromRGBO(0, 0, 0, 1.0),
                              fontSize: 20)),
                    ],
                  ),
                ),
                Container(
                  height: altooo * 0.02,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.amber[700],
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 3.0, color: Colors.black54)),
                  child: Row(
                    children: [
                      IconButton(
                          icon: Icon(
                            Icons.play_circle_filled,
                            size: 30,
                          ),
                          onPressed: () {}),
                      Text("Episodio 7: El señor amable",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.secularOne(
                              color: Color.fromRGBO(0, 0, 0, 1.0),
                              fontSize: 20)),
                    ],
                  ),
                ),
                Container(
                  height: altooo * 0.02,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.amber[700],
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 3.0, color: Colors.black54)),
                  child: Row(
                    children: [
                      IconButton(
                          icon: Icon(
                            Icons.play_circle_filled,
                            size: 30,
                          ),
                          onPressed: () {}),
                      Text("Episodio 8: El asesor de imagen",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.secularOne(
                              color: Color.fromRGBO(0, 0, 0, 1.0),
                              fontSize: 20)),
                    ],
                  ),
                ),
                Container(
                  height: altooo * 0.02,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.amber[700],
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 3.0, color: Colors.black54)),
                  child: Row(
                    children: [
                      IconButton(
                          icon: Icon(
                            Icons.play_circle_filled,
                            size: 30,
                          ),
                          onPressed: () {}),
                      Text("Episodio 9: Día libre",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.secularOne(
                              color: Color.fromRGBO(0, 0, 0, 1.0),
                              fontSize: 20)),
                    ],
                  ),
                ),
                Container(
                  height: altooo * 0.02,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.amber[700],
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 3.0, color: Colors.black54)),
                  child: Row(
                    children: [
                      IconButton(
                          icon: Icon(
                            Icons.play_circle_filled,
                            size: 30,
                          ),
                          onPressed: () {}),
                      Text("Episodio 10: El maguito",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.secularOne(
                              color: Color.fromRGBO(0, 0, 0, 1.0),
                              fontSize: 20)),
                    ],
                  ),
                ),
                Container(
                  height: altooo * 0.02,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.amber[700],
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 3.0, color: Colors.black54)),
                  child: Row(
                    children: [
                      IconButton(
                          icon: Icon(
                            Icons.play_circle_filled,
                            size: 30,
                          ),
                          onPressed: () {}),
                      Text("Episodio 1: El comienzo",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.secularOne(
                              color: Color.fromRGBO(0, 0, 0, 1.0),
                              fontSize: 20)),
                    ],
                  ),
                ),
                Container(
                  height: altooo * 0.02,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.amber[700],
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 3.0, color: Colors.black54)),
                  child: Row(
                    children: [
                      IconButton(
                          icon: Icon(
                            Icons.play_circle_filled,
                            size: 30,
                          ),
                          onPressed: () {}),
                      Text("Episodio 11: La gotera",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.secularOne(
                              color: Color.fromRGBO(0, 0, 0, 1.0),
                              fontSize: 20)),
                    ],
                  ),
                ),
                Container(
                  height: altooo * 0.02,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.amber[700],
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 3.0, color: Colors.black54)),
                  child: Row(
                    children: [
                      IconButton(
                          icon: Icon(
                            Icons.play_circle_filled,
                            size: 30,
                          ),
                          onPressed: () {}),
                      Text("Episodio 12: Patana",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.secularOne(
                              color: Color.fromRGBO(0, 0, 0, 1.0),
                              fontSize: 20)),
                    ],
                  ),
                ),
                Container(
                  height: altooo * 0.02,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.amber[700],
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 3.0, color: Colors.black54)),
                  child: Row(
                    children: [
                      IconButton(
                          icon: Icon(
                            Icons.more,
                            size: 30,
                          ),
                          onPressed: () {}),
                      Text("        Más episodios",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.secularOne(
                              color: Color.fromRGBO(0, 0, 0, 1.0),
                              fontSize: 20)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
        break;

      case "2":
        return Center(
          child: Container(
            width: anchooo * 0.85,
            height: altooo * 0.7,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.amber[700],
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 3.0, color: Colors.black54)),
                  child: Row(
                    children: [
                      IconButton(
                          icon: Icon(
                            Icons.play_circle_filled,
                            size: 30,
                          ),
                          onPressed: () {}),
                      Text("Episodio 1: Navidad",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.secularOne(
                              color: Color.fromRGBO(0, 0, 0, 1.0),
                              fontSize: 20)),
                    ],
                  ),
                ),
                Container(
                  height: altooo * 0.02,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.amber[700],
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 3.0, color: Colors.black54)),
                  child: Row(
                    children: [
                      IconButton(
                          icon: Icon(
                            Icons.play_circle_filled,
                            size: 30,
                          ),
                          onPressed: () {}),
                      Text("Episodio 2: Vacaciones",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.secularOne(
                              color: Color.fromRGBO(0, 0, 0, 1.0),
                              fontSize: 20)),
                    ],
                  ),
                ),
                Container(
                  height: altooo * 0.02,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.amber[700],
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 3.0, color: Colors.black54)),
                  child: Row(
                    children: [
                      IconButton(
                          icon: Icon(
                            Icons.play_circle_filled,
                            size: 30,
                          ),
                          onPressed: () {}),
                      Text("Episodio 3: Relox",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.secularOne(
                              color: Color.fromRGBO(0, 0, 0, 1.0),
                              fontSize: 20)),
                    ],
                  ),
                ),
                Container(
                  height: altooo * 0.02,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.amber[700],
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 3.0, color: Colors.black54)),
                  child: Row(
                    children: [
                      IconButton(
                          icon: Icon(
                            Icons.play_circle_filled,
                            size: 30,
                          ),
                          onPressed: () {}),
                      Text("Episodio 4: Tío Horacio",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.secularOne(
                              color: Color.fromRGBO(0, 0, 0, 1.0),
                              fontSize: 20)),
                    ],
                  ),
                ),
                Container(
                  height: altooo * 0.02,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.amber[700],
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 3.0, color: Colors.black54)),
                  child: Row(
                    children: [
                      IconButton(
                          icon: Icon(
                            Icons.play_circle_filled,
                            size: 30,
                          ),
                          onPressed: () {}),
                      Text("Episodio 5: Japonés",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.secularOne(
                              color: Color.fromRGBO(0, 0, 0, 1.0),
                              fontSize: 20)),
                    ],
                  ),
                ),
                Container(
                  height: altooo * 0.02,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.amber[700],
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 3.0, color: Colors.black54)),
                  child: Row(
                    children: [
                      IconButton(
                          icon: Icon(
                            Icons.play_circle_filled,
                            size: 30,
                          ),
                          onPressed: () {}),
                      Text("Episodio 6: ¡Qué lastima!",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.secularOne(
                              color: Color.fromRGBO(0, 0, 0, 1.0),
                              fontSize: 20)),
                    ],
                  ),
                ),
                Container(
                  height: altooo * 0.02,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.amber[700],
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 3.0, color: Colors.black54)),
                  child: Row(
                    children: [
                      IconButton(
                          icon: Icon(
                            Icons.play_circle_filled,
                            size: 30,
                          ),
                          onPressed: () {}),
                      Text("Episodio 7: Lulo Serrucho",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.secularOne(
                              color: Color.fromRGBO(0, 0, 0, 1.0),
                              fontSize: 20)),
                    ],
                  ),
                ),
                Container(
                  height: altooo * 0.02,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.amber[700],
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 3.0, color: Colors.black54)),
                  child: Row(
                    children: [
                      IconButton(
                          icon: Icon(
                            Icons.play_circle_filled,
                            size: 30,
                          ),
                          onPressed: () {}),
                      Text("Episodio 8: Bodoque Deprimido",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.secularOne(
                              color: Color.fromRGBO(0, 0, 0, 1.0),
                              fontSize: 20)),
                    ],
                  ),
                ),
                Container(
                  height: altooo * 0.02,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.amber[700],
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 3.0, color: Colors.black54)),
                  child: Row(
                    children: [
                      IconButton(
                          icon: Icon(
                            Icons.play_circle_filled,
                            size: 30,
                          ),
                          onPressed: () {}),
                      Text("Episodio 9: Cebollas",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.secularOne(
                              color: Color.fromRGBO(0, 0, 0, 1.0),
                              fontSize: 20)),
                    ],
                  ),
                ),
                Container(
                  height: altooo * 0.02,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.amber[700],
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 3.0, color: Colors.black54)),
                  child: Row(
                    children: [
                      IconButton(
                          icon: Icon(
                            Icons.play_circle_filled,
                            size: 30,
                          ),
                          onPressed: () {}),
                      Text("Episodio 10: Un ratoncito duro...",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.secularOne(
                              color: Color.fromRGBO(0, 0, 0, 1.0),
                              fontSize: 20)),
                    ],
                  ),
                ),
                Container(
                  height: altooo * 0.02,
                ),
                Container(
                  height: altooo * 0.02,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.amber[700],
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 3.0, color: Colors.black54)),
                  child: Row(
                    children: [
                      IconButton(
                          icon: Icon(
                            Icons.play_circle_filled,
                            size: 30,
                          ),
                          onPressed: () {}),
                      Text("Episodio 11: El secreto",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.secularOne(
                              color: Color.fromRGBO(0, 0, 0, 1.0),
                              fontSize: 20)),
                    ],
                  ),
                ),
                Container(
                  height: altooo * 0.02,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.amber[700],
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 3.0, color: Colors.black54)),
                  child: Row(
                    children: [
                      IconButton(
                          icon: Icon(
                            Icons.play_circle_filled,
                            size: 30,
                          ),
                          onPressed: () {}),
                      Text("Episodio 12: El despido",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.secularOne(
                              color: Color.fromRGBO(0, 0, 0, 1.0),
                              fontSize: 20)),
                    ],
                  ),
                ),
                Container(
                  height: altooo * 0.02,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.amber[700],
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 3.0, color: Colors.black54)),
                  child: Row(
                    children: [
                      IconButton(
                          icon: Icon(
                            Icons.more,
                            size: 30,
                          ),
                          onPressed: () {}),
                      Text("        Más episodios",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.secularOne(
                              color: Color.fromRGBO(0, 0, 0, 1.0),
                              fontSize: 20)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
        break;

      case "3":
        return Center(
          child: Container(
            width: anchooo * 0.85,
            height: altooo * 0.7,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.amber[700],
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 3.0, color: Colors.black54)),
                  child: Row(
                    children: [
                      IconButton(
                          icon: Icon(
                            Icons.play_circle_filled,
                            size: 30,
                          ),
                          onPressed: () {}),
                      Text("Episodio 1: Por el señor...",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.secularOne(
                              color: Color.fromRGBO(0, 0, 0, 1.0),
                              fontSize: 20)),
                    ],
                  ),
                ),
                Container(
                  height: altooo * 0.02,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.amber[700],
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 3.0, color: Colors.black54)),
                  child: Row(
                    children: [
                      IconButton(
                          icon: Icon(
                            Icons.play_circle_filled,
                            size: 30,
                          ),
                          onPressed: () {}),
                      Text("Episodio 2: La máquina del...",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.secularOne(
                              color: Color.fromRGBO(0, 0, 0, 1.0),
                              fontSize: 20)),
                    ],
                  ),
                ),
                Container(
                  height: altooo * 0.02,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.amber[700],
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 3.0, color: Colors.black54)),
                  child: Row(
                    children: [
                      IconButton(
                          icon: Icon(
                            Icons.play_circle_filled,
                            size: 30,
                          ),
                          onPressed: () {}),
                      Text("Episodio 3: La liga del mal",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.secularOne(
                              color: Color.fromRGBO(0, 0, 0, 1.0),
                              fontSize: 20)),
                    ],
                  ),
                ),
                Container(
                  height: altooo * 0.02,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.amber[700],
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 3.0, color: Colors.black54)),
                  child: Row(
                    children: [
                      IconButton(
                          icon: Icon(
                            Icons.play_circle_filled,
                            size: 30,
                          ),
                          onPressed: () {}),
                      Text("Episodio 4: Estiércol",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.secularOne(
                              color: Color.fromRGBO(0, 0, 0, 1.0),
                              fontSize: 20)),
                    ],
                  ),
                ),
                Container(
                  height: altooo * 0.02,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.amber[700],
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 3.0, color: Colors.black54)),
                  child: Row(
                    children: [
                      IconButton(
                          icon: Icon(
                            Icons.play_circle_filled,
                            size: 30,
                          ),
                          onPressed: () {}),
                      Text("Episodio 5: Mr. Drilo's",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.secularOne(
                              color: Color.fromRGBO(0, 0, 0, 1.0),
                              fontSize: 20)),
                    ],
                  ),
                ),
                Container(
                  height: altooo * 0.02,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.amber[700],
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 3.0, color: Colors.black54)),
                  child: Row(
                    children: [
                      IconButton(
                          icon: Icon(
                            Icons.play_circle_filled,
                            size: 30,
                          ),
                          onPressed: () {}),
                      Text("Episodio 6: El fantasma del...",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.secularOne(
                              color: Color.fromRGBO(0, 0, 0, 1.0),
                              fontSize: 20)),
                    ],
                  ),
                ),
                Container(
                  height: altooo * 0.02,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.amber[700],
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 3.0, color: Colors.black54)),
                  child: Row(
                    children: [
                      IconButton(
                          icon: Icon(
                            Icons.play_circle_filled,
                            size: 30,
                          ),
                          onPressed: () {}),
                      Text("Episodio 7: La mamá",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.secularOne(
                              color: Color.fromRGBO(0, 0, 0, 1.0),
                              fontSize: 20)),
                    ],
                  ),
                ),
                Container(
                  height: altooo * 0.02,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.amber[700],
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 3.0, color: Colors.black54)),
                  child: Row(
                    children: [
                      IconButton(
                          icon: Icon(
                            Icons.play_circle_filled,
                            size: 30,
                          ),
                          onPressed: () {}),
                      Text("Episodio 8: La invasión de los...",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.secularOne(
                              color: Color.fromRGBO(0, 0, 0, 1.0),
                              fontSize: 20)),
                    ],
                  ),
                ),
                Container(
                  height: altooo * 0.02,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.amber[700],
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 3.0, color: Colors.black54)),
                  child: Row(
                    children: [
                      IconButton(
                          icon: Icon(
                            Icons.play_circle_filled,
                            size: 30,
                          ),
                          onPressed: () {}),
                      Text("Episodio 9: El video",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.secularOne(
                              color: Color.fromRGBO(0, 0, 0, 1.0),
                              fontSize: 20)),
                    ],
                  ),
                ),
                Container(
                  height: altooo * 0.02,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.amber[700],
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 3.0, color: Colors.black54)),
                  child: Row(
                    children: [
                      IconButton(
                          icon: Icon(
                            Icons.play_circle_filled,
                            size: 30,
                          ),
                          onPressed: () {}),
                      Text("Episodio 10: La alcancía",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.secularOne(
                              color: Color.fromRGBO(0, 0, 0, 1.0),
                              fontSize: 20)),
                    ],
                  ),
                ),
                Container(
                  height: altooo * 0.02,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.amber[700],
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 3.0, color: Colors.black54)),
                  child: Row(
                    children: [
                      IconButton(
                          icon: Icon(
                            Icons.play_circle_filled,
                            size: 30,
                          ),
                          onPressed: () {}),
                      Text("Episodio 11: La bruja parte 1",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.secularOne(
                              color: Color.fromRGBO(0, 0, 0, 1.0),
                              fontSize: 20)),
                    ],
                  ),
                ),
                Container(
                  height: altooo * 0.02,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.amber[700],
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 3.0, color: Colors.black54)),
                  child: Row(
                    children: [
                      IconButton(
                          icon: Icon(
                            Icons.play_circle_filled,
                            size: 30,
                          ),
                          onPressed: () {}),
                      Text("Episodio 12: Labruja parte 2",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.secularOne(
                              color: Color.fromRGBO(0, 0, 0, 1.0),
                              fontSize: 20)),
                    ],
                  ),
                ),
                Container(
                  height: altooo * 0.02,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.amber[700],
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 3.0, color: Colors.black54)),
                  child: Row(
                    children: [
                      IconButton(
                          icon: Icon(
                            Icons.more,
                            size: 30,
                          ),
                          onPressed: () {}),
                      Text("        Más episodios",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.secularOne(
                              color: Color.fromRGBO(0, 0, 0, 1.0),
                              fontSize: 20)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );

        break;

      case "4":
        return Center(
          child: Container(
            width: anchooo * 0.85,
            height: altooo * 0.7,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.amber[700],
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 3.0, color: Colors.black54)),
                  child: Row(
                    children: [
                      IconButton(
                          icon: Icon(
                            Icons.play_circle_filled,
                            size: 30,
                          ),
                          onPressed: () {}),
                      Text("Episodio 1: La Mona Lisa",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.secularOne(
                              color: Color.fromRGBO(0, 0, 0, 1.0),
                              fontSize: 20)),
                    ],
                  ),
                ),
                Container(
                  height: altooo * 0.02,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.amber[700],
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 3.0, color: Colors.black54)),
                  child: Row(
                    children: [
                      IconButton(
                          icon: Icon(
                            Icons.play_circle_filled,
                            size: 30,
                          ),
                          onPressed: () {}),
                      Text("Episodio 2: Cirujía",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.secularOne(
                              color: Color.fromRGBO(0, 0, 0, 1.0),
                              fontSize: 20)),
                    ],
                  ),
                ),
                Container(
                  height: altooo * 0.02,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.amber[700],
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 3.0, color: Colors.black54)),
                  child: Row(
                    children: [
                      IconButton(
                          icon: Icon(
                            Icons.play_circle_filled,
                            size: 30,
                          ),
                          onPressed: () {}),
                      Text("Episodio 3: Patana enamorada",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.secularOne(
                              color: Color.fromRGBO(0, 0, 0, 1.0),
                              fontSize: 20)),
                    ],
                  ),
                ),
                Container(
                  height: altooo * 0.02,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.amber[700],
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 3.0, color: Colors.black54)),
                  child: Row(
                    children: [
                      IconButton(
                          icon: Icon(
                            Icons.play_circle_filled,
                            size: 30,
                          ),
                          onPressed: () {}),
                      Text("Episodio 4: Huachimingo sin ...",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.secularOne(
                              color: Color.fromRGBO(0, 0, 0, 1.0),
                              fontSize: 20)),
                    ],
                  ),
                ),
                Container(
                  height: altooo * 0.02,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.amber[700],
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 3.0, color: Colors.black54)),
                  child: Row(
                    children: [
                      IconButton(
                          icon: Icon(
                            Icons.play_circle_filled,
                            size: 30,
                          ),
                          onPressed: () {}),
                      Text("Episodio 5: El meteorito",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.secularOne(
                              color: Color.fromRGBO(0, 0, 0, 1.0),
                              fontSize: 20)),
                    ],
                  ),
                ),
                Container(
                  height: altooo * 0.02,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.amber[700],
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 3.0, color: Colors.black54)),
                  child: Row(
                    children: [
                      IconButton(
                          icon: Icon(
                            Icons.play_circle_filled,
                            size: 30,
                          ),
                          onPressed: () {}),
                      Text("Episodio 6: Bebé moustro",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.secularOne(
                              color: Color.fromRGBO(0, 0, 0, 1.0),
                              fontSize: 20)),
                    ],
                  ),
                ),
                Container(
                  height: altooo * 0.02,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.amber[700],
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 3.0, color: Colors.black54)),
                  child: Row(
                    children: [
                      IconButton(
                          icon: Icon(
                            Icons.play_circle_filled,
                            size: 30,
                          ),
                          onPressed: () {}),
                      Text("Episodio 7: Jack Patata",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.secularOne(
                              color: Color.fromRGBO(0, 0, 0, 1.0),
                              fontSize: 20)),
                    ],
                  ),
                ),
                Container(
                  height: altooo * 0.02,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.amber[700],
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 3.0, color: Colors.black54)),
                  child: Row(
                    children: [
                      IconButton(
                          icon: Icon(
                            Icons.play_circle_filled,
                            size: 30,
                          ),
                          onPressed: () {}),
                      Text("Episodio 8: Bodoque envenenado",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.secularOne(
                              color: Color.fromRGBO(0, 0, 0, 1.0),
                              fontSize: 20)),
                    ],
                  ),
                ),
                Container(
                  height: altooo * 0.02,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.amber[700],
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 3.0, color: Colors.black54)),
                  child: Row(
                    children: [
                      IconButton(
                          icon: Icon(
                            Icons.play_circle_filled,
                            size: 30,
                          ),
                          onPressed: () {}),
                      Text("Episodio 9: Oestelandia",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.secularOne(
                              color: Color.fromRGBO(0, 0, 0, 1.0),
                              fontSize: 20)),
                    ],
                  ),
                ),
                Container(
                  height: altooo * 0.02,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.amber[700],
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 3.0, color: Colors.black54)),
                  child: Row(
                    children: [
                      IconButton(
                          icon: Icon(
                            Icons.play_circle_filled,
                            size: 30,
                          ),
                          onPressed: () {}),
                      Text("Episodio 10: El mayordomo",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.secularOne(
                              color: Color.fromRGBO(0, 0, 0, 1.0),
                              fontSize: 20)),
                    ],
                  ),
                ),
                Container(
                  height: altooo * 0.02,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.amber[700],
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 3.0, color: Colors.black54)),
                  child: Row(
                    children: [
                      IconButton(
                          icon: Icon(
                            Icons.play_circle_filled,
                            size: 30,
                          ),
                          onPressed: () {}),
                      Text("Episodio 11: Diario de Juanín",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.secularOne(
                              color: Color.fromRGBO(0, 0, 0, 1.0),
                              fontSize: 20)),
                    ],
                  ),
                ),
                Container(
                  height: altooo * 0.02,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.amber[700],
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 3.0, color: Colors.black54)),
                  child: Row(
                    children: [
                      IconButton(
                          icon: Icon(
                            Icons.play_circle_filled,
                            size: 30,
                          ),
                          onPressed: () {}),
                      Text("Episodio 12: La gran gala de...",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.secularOne(
                              color: Color.fromRGBO(0, 0, 0, 1.0),
                              fontSize: 20)),
                    ],
                  ),
                ),
                Container(
                  height: altooo * 0.02,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.amber[700],
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 3.0, color: Colors.black54)),
                  child: Row(
                    children: [
                      IconButton(
                          icon: Icon(
                            Icons.more,
                            size: 30,
                          ),
                          onPressed: () {}),
                      Text("        Más episodios",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.secularOne(
                              color: Color.fromRGBO(0, 0, 0, 1.0),
                              fontSize: 20)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
        break;
      default:
    }
  }
}
