import 'package:flutter/material.dart';

main() => runApp(PerguntaApp());

class PerguntaApp extends StatelessWidget {
  PerguntaApp({super.key});

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
            const ElevatedButton(
              onPressed: null,
              child: Text('Resposta 1')
            ),
            const ElevatedButton(
              onPressed: null,
              child: Text('Resposta 2')
            ),
            const ElevatedButton(
              onPressed: null,
              child: Text('Resposta 3')
            ),
          ],
        ),
      ),
    );
  }
}