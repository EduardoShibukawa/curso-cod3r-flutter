import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

main() => runApp(new PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  
  var _perguntaSelecionada = 0;

  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });

    print('Resposta respondida!!');
  }

  @override
  Widget build(BuildContext context) {
    final List<Map<String, Object>> perguntas = [
      {
        'texto': 'Qual é a sua cor favorita?',
        'repostas': ['Preto', 'Vermelho', 'Verde', 'Branco']
      },
      {
        'texto': 'Qual é o seu animal favorito?',
        'respostas': ['Coelho', 'Cobra', 'Elefante', 'Leao']
      },
      {
        'texto': 'Qual é o seu instrutor favorito?',
        'respostas': ['Maria', 'Joao', 'Leo', 'Pedro']
      },
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Perguntas"),
        ),
        body: Column(
          children: <Widget>[
            Questao(
              texto: perguntas[_perguntaSelecionada]['texto'],
            ),
            Resposta('Resposta 1', _responder),
            Resposta('Resposta 2', _responder),
            Resposta('Resposta 3', _responder),
          ],
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {

  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
