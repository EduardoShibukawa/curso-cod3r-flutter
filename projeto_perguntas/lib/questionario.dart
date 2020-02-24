import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questao.dart';
import 'package:projeto_perguntas/resposta.dart';

class Questionario extends StatelessWidget {
  final Questao questao;
  final List<Resposta> respostas;

  Questionario(this.questao, this.respostas);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [questao, ...respostas],
    );
  }
}
