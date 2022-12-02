import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whatresistor/Homepage.dart';

class ResistenceToColor extends StatefulWidget {
  const ResistenceToColor({super.key});

  @override
  State<ResistenceToColor> createState() => _ResistenceToColorState();
}

class _ResistenceToColorState extends State<ResistenceToColor> {
  var _textController = TextEditingController();
  String inputResistence = '';
  int n1 = 0;
  int n2 = 0;
  int n3 = 0;
  var index = [];
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

  void runResistenceToColor() {
    setState(() {
      index.removeRange(0, index.length);
      inputResistence = _textController.text;
      n1 = int.parse(inputResistence[0]);
      inputResistence = inputResistence.substring(1, inputResistence.length);
      n2 = int.parse(inputResistence[0]);
      inputResistence = inputResistence.substring(1, inputResistence.length);
      n3 = inputResistence.length;

      index.add(colorsArray[n1]);
      index.add(colorsArray[n2]);
      index.add(colorsArray[n3]);

      answer = index
          .toString()
          .replaceAll("[", '')
          .replaceAll("]", "")
          .replaceAll(",", " | ");
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
        backgroundColor: Color.fromARGB(255, 60, 51, 47),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(30.0)),
            TextField(
              style: GoogleFonts.firaCode(fontSize: 15, color: Colors.white),
              maxLength: 11,
              controller: _textController,
              decoration: InputDecoration(
                  hintText: 'Digite a resistencia...',
                  hintStyle: TextStyle(color: Colors.grey, letterSpacing: 0)),
              textAlign: TextAlign.center,
            ),
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
                    onPressed: () => runResistenceToColor(),
                    child: const Text('Convert Now'),
                  ),
                ],
              ),
            ),
            Padding(padding: EdgeInsets.all(55.0)),
            Text(
              answer,
              style: GoogleFonts.firaCode(fontSize: 20, color: Colors.white),
            ),
            Padding(padding: EdgeInsets.all(70.0)),
            Text(
              "© Todos os direitos reservados: Ícaro Macedo, Guilherme Tadayuki, Rodrigo Souza e Gustavo Amaral.",
              style: GoogleFonts.roboto(
                  fontSize: 10, color: Color.fromARGB(255, 88, 88, 88)),
            )
          ],
        ),
      ),
    );
  }
}
