import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../services/RandomGenerator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _number = 0;
  var _vezesApertadas = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          "Meu App",
          style: GoogleFonts.pacifico(),
        )),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Bem vindo ao programa",
              style:
                  GoogleFonts.palanquinDark(fontSize: 70, color: Colors.cyan),
            ),
            Column(
              children: [
                Container(
                  color: Colors.amber,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "O botão foi apertado: ",
                            style: GoogleFonts.acme(fontSize: 50),
                          ),
                          Text(
                            "Número gerado: ",
                            style: GoogleFonts.acme(fontSize: 50),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "$_vezesApertadas vezes",
                            style: GoogleFonts.acme(fontSize: 50),
                          ),
                          Text(
                            "$_number",
                            style: GoogleFonts.acme(fontSize: 50),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.settings_backup_restore),
          onPressed: () {
            setState(() {
              _number = RandomGenerator().randNum(10);
              _vezesApertadas = _vezesApertadas + 1;
            });
          }),
    );
  }
}
