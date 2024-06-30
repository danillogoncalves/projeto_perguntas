import 'package:flutter/material.dart';

main() => runApp(PerguntaApp());

class PerguntaApp extends StatelessWidget {
  PerguntaApp({super.key});

  void responder() {
    print('Perunta respondida');
  }

  final perguntas = [
    'Qual é a sua cor favorita?',
    'Qual é o seu animal favorito?'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Perguntas"),
        ),
        body: Column(
          children: [
            Text(perguntas[0]),
            ElevatedButton(
              onPressed: responder,
              child: const Text('Resposta 1')
            ),
            ElevatedButton(
              onPressed: responder,
              child: const Text('Resposta 2')
            ),
            ElevatedButton(
              onPressed: responder,
              child: const Text('Resposta 3')
            ),
          ],
        ),
      ),
    );
  }
}