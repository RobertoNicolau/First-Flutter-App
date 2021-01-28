import 'package:flutter/material.dart';
import './questionario.dart';
import './resultado.dart';

main() => runApp(FirstApp());

class _FirstAppState extends State<FirstApp> {
  var _perguntaSelecionada = 0;
  var _pontuacaoTotal = 0;
  final List<Map<String, Object>> _perguntas = const [
    {
      'texto': 'Qual é sua cor favorita?',
      'respostas': [
        {'texto': 'Preto', 'pontuacao': 10},
        {'texto': 'Vermelho', 'pontuacao': 5},
        {'texto': 'Verde', 'pontuacao': 3},
        {'texto': 'Branco', 'pontuacao': 1},
      ],
    },
    {
      'texto': 'Qual é seu animal favorito?',
      'respostas': [
        {'texto': 'Coelho', 'pontuacao': 1},
        {'texto': 'Cobra', 'pontuacao': 3},
        {'texto': 'Elefante', 'pontuacao': 5},
        {'texto': 'Leão', 'pontuacao': 10},
      ],
    },
    {
      'texto': 'Qual é seu instrutor favorito?',
      'respostas': [
        {'texto': 'Maria', 'pontuacao': 5},
        {'texto': 'João', 'pontuacao': 1},
        {'texto': 'Leo', 'pontuacao': 10},
        {'texto': 'Pedro', 'pontuacao': 3},
      ],
    },
  ];

  //Metodo de incremento
  void _responder(int pontuacao) {
    if (isSet) {
      setState(() {
        _perguntaSelecionada++;
        _pontuacaoTotal += pontuacao;
      });
      print(_pontuacaoTotal);
    }
  }

  void _resetQuestionario(){
    setState(() {
      _perguntaSelecionada = 0;
      _pontuacaoTotal = 0;
    });
  }

  bool get isSet {
    return _perguntaSelecionada < _perguntas.length;
  }

  //Build
  @override
  Widget build(BuildContext context) {
/*     List<Widget> widgets = respostas
    .map((t) => Resposta(t, _responder))
    .toList(); */

/*     for(String textoResposta in respostas){
      widgets.add(Resposta(textoResposta, _responder));
    } */

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas App'),
        ),
        body: Center(
          child: isSet
              ? Questionario(
                  perguntas: _perguntas,
                  perguntaSelecionada: _perguntaSelecionada,
                  quandoResponder: _responder
              )
              : Resultado(_pontuacaoTotal, _resetQuestionario)
        ),
      ),
    );
  }
}

class FirstApp extends StatefulWidget {
  _FirstAppState createState() {
    return _FirstAppState();
  }
}
