import 'package:flutter/material.dart';

class Questao extends StatelessWidget {
  final String _questao;
  const Questao(this._questao, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(15),
      child: Text(
        _questao,
        style: const TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
