import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final Function proximaPergunta;

  Resposta(this.texto, this.proximaPergunta);

  void proxima() {
    proximaPergunta();
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: proxima, child: Text(texto));
  }
}
