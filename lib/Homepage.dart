import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:whatresistor/ColorToResistence.dart';
import 'package:whatresistor/ResistenceToColor.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
          child: Column(
        children: [
          Padding(padding: EdgeInsets.all(100.0)),
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
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ResistenceToColor()));
                  },
                  child: const Text('Resistência -> Cor'),
                ),
              ],
            ),
          ),
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
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ColorToResistence()));
                  },
                  child: const Text('Cor -> Resistência'),
                ),
              ],
            ),
          ),
          Padding(padding: EdgeInsets.all(110.0)),
          Text(
            "© Todos os direitos reservados: Ícaro Macedo, Guilherme Tadayuki, Rodrigo Souza e Gustavo Amaral.",
            style: GoogleFonts.roboto(
                fontSize: 10, color: Color.fromARGB(255, 88, 88, 88)),
          )
        ],
      )),
    );
  }
}
