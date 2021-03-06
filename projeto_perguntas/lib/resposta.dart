import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  
  final String texto;
  final void Function() quandoSelecionado;

  Resposta(this.texto, this.quandoSelecionado);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        textColor: Colors.white,
        color: Colors.blue,      
        child: Text(
          this.texto,
          style: TextStyle(fontSize: 10),
          textAlign: TextAlign.center,
        ),
        onPressed: this.quandoSelecionado,
      ),
    );
  }
}
