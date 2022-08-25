import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questao.dart';
import 'package:projeto_perguntas/resposta.dart';

class Questionario extends StatelessWidget {
  
  final Map<String, Object> _perguntas;
  final void Function(int) acao;

  const Questionario(this._perguntas, this.acao, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Questao(_perguntas['questao'].toString()),
        ...respostas
      ],
    );
  }

  List<Widget> get respostas =>
     _perguntas.cast<String, List<Map<String, Object>>>()['respostas']!
      .map((e) => Resposta(e.cast()['texto'].toString(), ()=>acao(e.cast()['pontuacao']))).toList();
}