import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questionario.dart';
import 'package:projeto_perguntas/resultado.dart';

class PerguntasAppState extends State<PerguntaApp> {
  final List<Map<String, Object>> _perguntas = [
    {
      'questao': 'Qual seu time favorito?',
      'respostas': [
        { 'texto': 'Flamengo', 'pontuacao': 10 },
        { 'texto': 'Vasco', 'pontuacao': 3 },
        { 'texto': 'Fluminense', 'pontuacao': 5 }
      ],
    },
    {
      'questao': 'Qual seu animal preferido?',
      'respostas': [
        { 'texto': 'Gato', 'pontuacao': 5 }, 
        { 'texto': 'Cachorro', 'pontuacao': 10 }, 
        { 'texto': 'Cobra', 'pontuacao': 3 } 
      ]
    },
  ];
  
  int _pontuacaoTotal = 0;
  int _respostaSelecionada = 0;
  bool get temPerguntas => _respostaSelecionada < _perguntas.length;

  void _responder(int pontuacao) {
    if (temPerguntas) {
      setState(() {
        _pontuacaoTotal += pontuacao;
        _respostaSelecionada++;
      });
    }
  }

  void reiniciar() {
    setState(() {
      _pontuacaoTotal = 0;
      _respostaSelecionada = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Perguntas', textAlign: TextAlign.center),
          ),
          body: temPerguntas
              ? Questionario(_perguntas[_respostaSelecionada], _responder)
              : Resultado('Parabéns!!!', _pontuacaoTotal, reiniciar)
        ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
 const PerguntaApp({super.key});

  @override
  PerguntasAppState createState() {
    return PerguntasAppState();
  }
}

main() {
  runApp(const PerguntaApp());
}
