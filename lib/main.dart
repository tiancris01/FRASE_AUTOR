import 'package:flutter/material.dart';
import 'frases.dart';
import 'frasesTarjetas.dart';

void main() => runApp(MaterialApp(
      home: frases(),
    ));

class frases extends StatefulWidget {
  frases({Key? key}) : super(key: key);

  @override
  State<frases> createState() => _frasesState();
}

class _frasesState extends State<frases> {
  List<Frases> frase = [
    Frases(frase: "Pensamos demasiado y sentimos muy poco.", autor: "Hugo"),
    Frases(frase: "Sólo los soñadores mueven montañas", autor: "Hugo"),
    Frases(frase: "Una vida que niega la libertad, no es vida", autor: "Hugo"),
    Frases(frase: "Hola mundo ", autor: "Hola")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Frases Fantasticas'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: frase
            .map((e) => tarjetaFrases(
                frase1: e,
                delete: () {
                  setState(() {
                    frase.remove(e);
                  });
                }))
            .toList(),
        // children: frases.map((e) {
        //   return Text(e);
        // }).toList(),
      ),
    );
  }
}
