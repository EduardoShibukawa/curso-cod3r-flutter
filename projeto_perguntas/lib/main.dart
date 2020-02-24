import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questao.dart';
import 'package:projeto_perguntas/questionario.dart';
import './resposta.dart';
import './resultado.dart';

main() => runApp(new PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  final _perguntas = const [
    {
      'texto': 'Qual é a sua cor favorita?',
      'respostas': [
        {'texto': 'Preto', 'nota': 10.0},
        {'texto': 'Vermelho', 'nota': 5.0},
        {'texto': 'Verde', 'nota': 3.0},
        {'texto': 'Branco', 'nota': 1.0},
      ]
    },
    {
      'texto': 'Qual é o seu animal favorito?',
      'respostas': [
        {'texto': 'Coelho', 'nota': 10.0},
        {'texto': 'Cobra', 'nota': 5.0},
        {'texto': 'Elefante', 'nota': 3.0},
        {'texto': 'Leao', 'nota': 1},
      ]
    },
    {
      'texto': 'Qual é o seu instrutor favorito?',
      'respostas': [
        {'texto': 'Maria', 'nota': 10.0},
        {'texto': 'Joao', 'nota': 5.0},
        {'texto': 'Leo', 'nota': 3.0},
        {'texto': 'Pedro', 'nota': 1.0},
      ]
    },
  ];

  void _responder() {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
      });
    }
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Perguntas"),
          ),
          body: temPerguntaSelecionada
              ? Questionario(
                  perguntas: _perguntas,
                  perguntaSelecionada: _perguntaSelecionada,
                  quandoResponder: _responder,
                )
              : Resultado()),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
