import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String resposta;
  final void Function() acao;

  const Resposta(this.resposta, this.acao, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            fixedSize: Size(20, 10)
          ),
          onPressed: acao,
          child: Text(resposta)),
    );
  }
}
