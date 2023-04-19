import 'dart:math';
import 'package:flutter/material.dart';
//app de frases aleatórias com, array de frases
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'App frases aleatórias',
    home: frases(),
  ));
}
class frases extends StatefulWidget {
  const frases({Key? key}) : super(key: key);
  @override
  State<frases> createState() => _frasesState();
}
class _frasesState extends State<frases> {


  //back do app
  //criar um array de frases para ser exibidos de forma aleatória
  var _frases =[
    '-Por que chupetas tanto, meu filho?'
        '-Tuc tuc tuc tuc'

        '  -Não vais me responder?'
        '  -Tuc tuc tuc tuc'

        ' -Quem pensas que tu és para me ignorar sua besta?'
        ' -Tuc tuc tuc tuc', //array frase 0

  ];

  var _frasesGerada= 'Clique abaixo para ver a "PIADA" haha!'; //o text depois da imagem da logo, para chamar a função _gerarfrase

  void _gerarFrase(){ //função de gerar a frase aleatória
    //random sorteado irá pegar aleatóriamente de 0,1,2,3,4

    var numeroSorteado = Random().nextInt(_frases.length);
    //random é um importe do tipo import 'dart:marth;
    // o rondom é responsavel por exibir o array de forma aleatória
    setState(() {
      _frasesGerada=_frases[numeroSorteado];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('#######"Piada"#######'),
        backgroundColor: Colors.pinkAccent, //cor do appBar
      ),
      body: Center( //Centralizar o body
        child: Container(
          padding: EdgeInsets.all(16),//espaçamento appBar para o body
          child: Column(// verticalizar os elementos
            mainAxisAlignment: MainAxisAlignment.spaceAround, //spaceround == entre os espaços
            crossAxisAlignment: CrossAxisAlignment.center, //centralizar o espaçamento
            children:<Widget>[
              Image.asset('img/cachorro_3.jfif'// crie seu logo no canvas
              ),
              Text(_frasesGerada,
                style: TextStyle(
                  fontSize: 25,
                  fontStyle: FontStyle.italic,
                  color: Colors.black87,
                ),
              ),
              ElevatedButton(
                onPressed: _gerarFrase, // colocar a função array de frases aleatórias
                child: Text('PIADA HAHAHA',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                    //ElevatedButton. styleFrom(backgroundColor: Colors.blueGrey),
                  ),
                ),
                style: ElevatedButton. styleFrom(backgroundColor: Colors.pinkAccent),
              ),
            ],
          ),
        ),
      ),
    );
  }
}