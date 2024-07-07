import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

class Questionario extends StatelessWidget {
  final List<Map<String, Object>> perguntas;
  final int perguntaSelecionada;
  final void Function(int) quantoResponder;

  Questionario({
    required this.perguntas,
    required this.perguntaSelecionada,
    required this.quantoResponder,
  });

  bool get temPerguntaSeleciionada {
    return perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Questao(perguntas[perguntaSelecionada]['texto'].toString()),
        ...(temPerguntaSeleciionada
                ? perguntas[perguntaSelecionada]['respostas']
                    as List<Map<String, Object>>
                : [])
            .map((resp) => Resposta(
                resp['texto'], () => quantoResponder(resp['pontuacao']))),
      ],
    );
  }
}
