import 'package:flutter/material.dart';
import 'package:ssktour/telaCurso.dart';
import 'package:ssktour/telaEscola.dart';
import 'package:ssktour/telaIntegrantes.dart';
import 'package:ssktour/telaTcc.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void _abrirEquipe() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => TelaEscola()),
    );
  }

  void _abrirEscola() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => TelaCurso()),
    );
  }

  void _abrirTCC() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => TelaTCC()));
  }

  void _abrirCurso() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => TelaIntegrantes()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white54,
      appBar: AppBar(
        title: Text(
          "SSK TOUR",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset("images/DevLog.png", width: 350),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: _abrirEquipe,
                    child: Column(
                      children: [
                        Text("Equipe"),
                        Image.asset("imagens/integrantes.png", width: 200),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: _abrirEscola,
                    child: Column(
                      children: [
                        Text("Escola"),
                        Image.asset("imagens/escola.png", width: 200),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 22),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: _abrirTCC,
                    child: Column(
                      children: [
                        Text("TCC"),
                        Image.asset("imagens/tcc.png", width: 200),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: _abrirCurso,
                    child: Column(
                      children: [
                        Text("Curso"),
                        Image.asset("imagens/curso.png", width: 200),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
