import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questao.dart';
import 'package:projeto_perguntas/resposta.dart';


class PerguntasAppState extends State<PerguntaApp> {

  final List<Map<String, Object>> _perguntas = [
    {
      'questao':'Qual seu time favorito?',
      'respostas':['Flamengo','Vasco','Fluminense'],
    },
    {
      'questao':'Qual seu animal preferido?',
      'respostas':['Gato','Cachorro','Henrique']
    },
  ];

  List<String> get respostas => _perguntas[_respostaSelecionada].cast()['respostas'];
  List<Widget> get widgets => respostas.map((e) => Resposta(e, _responder)).toList();

  int _respostaSelecionada = 0;

  void _responder() {
    setState(() {
      if(_respostaSelecionada < _perguntas.length - 1){
        _respostaSelecionada++;
      }
      print(_respostaSelecionada);
    });
  }

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Perguntas',
            textAlign: TextAlign.center
            ),
        ),
        body: Column(
            children: [
              Questao(_perguntas[_respostaSelecionada]['questao'].toString()),
              ...widgets
            ],
        )
        ),
    );

  }
}

class PerguntaApp extends StatefulWidget {

  PerguntaApp({super.key});
  
  @override
  PerguntasAppState createState() {
    return PerguntasAppState();
  }
  

}

main() {
  runApp(PerguntaApp());
}