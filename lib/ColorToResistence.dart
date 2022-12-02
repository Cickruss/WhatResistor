import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Homepage.dart';

class ColorToResistence extends StatefulWidget {
  const ColorToResistence({super.key});

  @override
  State<ColorToResistence> createState() => _ColorToResistenceState();
}

class _ColorToResistenceState extends State<ColorToResistence> {
  String line1 = '0';
  String line2 = '0';
  int line3 = 0;
  String answer = '';
  var colorsArray = [
    "Preto",
    "Marrom",
    "Vermelho",
    "Laranja",
    "Amarelo",
    "Verde",
    "Azul",
    "Violeta",
    "Cinza",
    "Branco"
  ];
  void runColorToResistence() {
    setState(() {
      answer = line1 + line2 + ("0" * line3);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 32, 28, 27),
        appBar: AppBar(
            centerTitle: true,
            title: Text("What Resistor?",
                style: GoogleFonts.bebasNeue(fontSize: 30, letterSpacing: 6)),
            backgroundColor: Color.fromARGB(255, 60, 51, 47)),
        body: Center(
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Padding(padding: EdgeInsets.all(50.0)),
                    Text('Line 1',
                        style: GoogleFonts.firaCode(
                          color: Color.fromARGB(255, 184, 170, 149),
                        )),
                    DropdownButton(
                      dropdownColor: Color.fromARGB(255, 184, 170, 149),
                      hint: Text(
                        colorsArray[int.parse(line1)],
                        style: TextStyle(
                            color: Color.fromARGB(255, 184, 170, 149)),
                      ),
                      style: GoogleFonts.firaCode(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 99, 91, 79)),
                      underline: Container(
                        height: 2,
                        color: Color.fromARGB(255, 184, 170, 149),
                      ),
                      icon: const Icon(Icons.arrow_drop_down,
                          color: Color.fromARGB(255, 184, 170, 149)),
                      items: const [
                        DropdownMenuItem(
                          child: Text(
                            "Preto",
                          ),
                          value: "0",
                        ),
                        DropdownMenuItem(
                          child: Text("Marrom"),
                          value: "1",
                        ),
                        DropdownMenuItem(
                          child: Text("Vermelho"),
                          value: "2",
                        ),
                        DropdownMenuItem(
                          child: Text("Laranja"),
                          value: "3",
                        ),
                        DropdownMenuItem(
                          child: Text("Amarelo"),
                          value: "4",
                        ),
                        DropdownMenuItem(
                          child: Text("Verde"),
                          value: "5",
                        ),
                        DropdownMenuItem(
                          child: Text("Azul"),
                          value: "6",
                        ),
                        DropdownMenuItem(
                          child: Text("Violeta"),
                          value: "7",
                        ),
                        DropdownMenuItem(
                          child: Text("Cinza"),
                          value: "8",
                        ),
                        DropdownMenuItem(
                          child: Text("Branco"),
                          value: "9",
                        ),
                      ],
                      onChanged: (value) {
                        setState(() {
                          line1 = value!;
                        });
                      },
                    ),
                  ],
                ),
                Column(
                  children: [
                    Padding(padding: EdgeInsets.all(50.0)),
                    Text('Line 2',
                        style: GoogleFonts.firaCode(
                          color: Color.fromARGB(255, 184, 170, 149),
                        )),
                    DropdownButton(
                      dropdownColor: Color.fromARGB(255, 184, 170, 149),
                      hint: Text(colorsArray[int.parse(line2)],
                          style: TextStyle(
                              color: Color.fromARGB(255, 184, 170, 149))),
                      style: GoogleFonts.firaCode(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 99, 91, 79)),
                      underline: Container(
                        height: 2,
                        color: Color.fromARGB(255, 184, 170, 149),
                      ),
                      icon: const Icon(Icons.arrow_drop_down,
                          color: Color.fromARGB(255, 184, 170, 149)),
                      items: const [
                        DropdownMenuItem(
                          child: Text("Preto"),
                          value: "0",
                        ),
                        DropdownMenuItem(
                          child: Text("Marrom"),
                          value: "1",
                        ),
                        DropdownMenuItem(
                          child: Text("Vermelho"),
                          value: "2",
                        ),
                        DropdownMenuItem(
                          child: Text("Laranja"),
                          value: "3",
                        ),
                        DropdownMenuItem(
                          child: Text("Amarelo"),
                          value: "4",
                        ),
                        DropdownMenuItem(
                          child: Text("Verde"),
                          value: "5",
                        ),
                        DropdownMenuItem(
                          child: Text("Azul"),
                          value: "6",
                        ),
                        DropdownMenuItem(
                          child: Text("Violeta"),
                          value: "7",
                        ),
                        DropdownMenuItem(
                          child: Text("Cinza"),
                          value: "8",
                        ),
                        DropdownMenuItem(
                          child: Text("Branco"),
                          value: "9",
                        ),
                      ],
                      onChanged: (value) {
                        setState(() {
                          line2 = value!;
                        });
                      },
                    ),
                  ],
                ),
                Column(
                  children: [
                    Padding(padding: EdgeInsets.all(50.0)),
                    Text('Line 3',
                        style: GoogleFonts.firaCode(
                          color: Color.fromARGB(255, 184, 170, 149),
                        )),
                    DropdownButton(
                      dropdownColor: Color.fromARGB(255, 184, 170, 149),
                      hint: Text(colorsArray[line3],
                          style: TextStyle(
                              color: Color.fromARGB(255, 184, 170, 149))),
                      style: GoogleFonts.firaCode(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 99, 91, 79)),
                      underline: Container(
                        height: 2,
                        color: Color.fromARGB(255, 184, 170, 149),
                      ),
                      icon: const Icon(Icons.arrow_drop_down,
                          color: Color.fromARGB(255, 184, 170, 149)),
                      items: const [
                        DropdownMenuItem(
                          child: Text("Preto"),
                          value: 0,
                        ),
                        DropdownMenuItem(
                          child: Text("Marrom"),
                          value: 1,
                        ),
                        DropdownMenuItem(
                          child: Text("Vermelho"),
                          value: 2,
                        ),
                        DropdownMenuItem(
                          child: Text("Laranja"),
                          value: 3,
                        ),
                        DropdownMenuItem(
                          child: Text("Amarelo"),
                          value: 4,
                        ),
                        DropdownMenuItem(
                          child: Text("Verde"),
                          value: 5,
                        ),
                        DropdownMenuItem(
                          child: Text("Azul"),
                          value: 6,
                        ),
                        DropdownMenuItem(
                          child: Text("Violeta"),
                          value: 7,
                        ),
                      ],
                      onChanged: (value) {
                        setState(() {
                          line3 = value!;
                        });
                      },
                    ),
                  ],
                )
              ],
            ),
            Column(
              children: [
                Padding(padding: EdgeInsets.all(50.0)),
                const SizedBox(height: 30),
                ClipRRect(
                  borderRadius: BorderRadius.circular(4),
                  child: Stack(
                    children: <Widget>[
                      Positioned.fill(
                        child: Container(
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              colors: <Color>[
                                Color.fromARGB(255, 60, 51, 47),
                                Color.fromARGB(255, 46, 42, 34),
                                Color.fromARGB(255, 58, 52, 45),
                              ],
                            ),
                          ),
                        ),
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.all(16.0),
                          textStyle: GoogleFonts.firaCode(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                        onPressed: () => runColorToResistence(),
                        child: const Text('Convert Now'),
                      ),
                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.all(40.0)),
                Text(answer,
                    style: GoogleFonts.firaCode(
                        fontSize: 20, color: Colors.white)),
                Padding(padding: EdgeInsets.all(70.0)),
                Text(
                  "© Todos os direitos reservados: Ícaro Macedo, Guilherme Tadayuki, Rodrigo Souza e Gustavo Amaral.",
                  style: GoogleFonts.roboto(
                      fontSize: 10, color: Color.fromARGB(255, 88, 88, 88)),
                )
              ],
            )
          ]),
        ));
  }
}
