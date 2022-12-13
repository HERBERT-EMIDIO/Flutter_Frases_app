import 'dart:html';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'dart:math';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _frases = [
    "Nem todas as tempestades vêm para atrapalhar a sua vida. Algumas vêm para limpar seu caminho.",
    "A persistência realiza o impossível.",
    "Não se desespere quando a caminhada estiver difícil, é sinal de que você está no caminho certo",
    "A persistência é o caminho do êxito.",
  ];

  var _fraseGerada = "Clique abaixo para gerar uma Frase!";

  void _gerarFrase() {
    var numeroSorteado = Random().nextInt(_frases.length);
    setState(() {
      _fraseGerada = _frases[numeroSorteado];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Frases do Dia'),
        backgroundColor: Colors.lime[800],
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(16),
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(
              width: 3,
              color: Colors.amber,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset('assets/images/logo.png'),
              Text(
                _fraseGerada,
                textAlign: TextAlign.justify,
                style:
                    TextStyle(fontStyle: FontStyle.italic, color: Colors.black),
              ),
              ElevatedButton(
                // ignore: prefer_const_constructors
                child: Text(
                  'Nova Frase',
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                onPressed: _gerarFrase,
              )
            ],
          ),
        ),
      ),
    );
  }
}
