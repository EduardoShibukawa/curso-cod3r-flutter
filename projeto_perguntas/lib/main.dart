import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() => runApp(new PerguntaApp());


class PerguntaApp extends StatelessWidget{

  void responder() {
    print('Resposta respondida!!');
  }

  @override
  Widget build(BuildContext context) {    
    final perguntas = [
      'Qual é a sua cor favorita?',
      'Qual é o seu animal favorito?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Perguntas"),          
        ),
        body: Column(
          children: <Widget>[
            Text(perguntas[0]),
             RaisedButton(
               child: Text('Resposta 1'),
               onPressed: responder,
             ),
             RaisedButton(
               child: Text('Resposta 2'),
               onPressed: () {
                 print("Resposta 2 foi respondida");
               },
             ),
             RaisedButton(
               child: Text('Resposta 3'),
               onPressed: () => print("Resposta 3 foi respondida!"),
             ),             
          ],
        ),
      ),
    );
  }
}