import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final String text;
  final int pontuacaoTotal;
  final Function() reiniciar;

  const Resultado(
    this.text,
    this.pontuacaoTotal,
    this.reiniciar, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            mensagem,
            style: const TextStyle(fontSize: 20),
          ),
          TextButton(
            onPressed: reiniciar,
            style: TextButton.styleFrom(
              padding: const EdgeInsets.all(20)
            ),
            child: const Text('Reiniciar Questionário'),
          )
        ],
      ),
    );
  }

  String get mensagem => "Sua pontuação foi $pontuacaoTotal, Parabéns!!!!";
}
