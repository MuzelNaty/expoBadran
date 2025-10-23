import 'package:flutter/material.dart';
import 'package:ssktour/telaCurso.dart';
import 'package:ssktour/telaEscola.dart';
import 'package:ssktour/telaIntegrantes.dart';
import 'package:ssktour/telaTCC.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void _abrirEscola() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => TelaEscola()),
    );
  }

  void _abrirCurso() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => TelaCurso()),
    );
  }

  void _abrirTCC() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => TelaTCC()));
  }

  void _abrirEquipe() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => TelaIntegrantes()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Conheça mais sobre a",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 25,
          ),
        ),
        backgroundColor: const Color.fromRGBO(95, 170, 217, 1.0),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset("imagens/logo.png", width: 350),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: _abrirEquipe,
                    child: SizedBox(
                      width: 150,  // largura total do botão
                      height: 240, // altura total do botão
                      child: Column(
                        children: [
                          Text(
                            "Equipe",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: const Color.fromRGBO(95, 170, 217, 1.0),
                              fontSize: 24,
                            ),
                          ),
                          Image.asset("imagens/integrantes.png", width: 200),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: _abrirEscola,
                    child: SizedBox(
                      width: 150,  // largura total do botão
                      height: 240, // altura total do botão
                      child: Column(
                        children: [
                          Text(
                            "Escola",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: const Color.fromRGBO(95, 170, 217, 1.0),
                              fontSize: 24,
                            ),
                          ),
                          Image.asset("imagens/escola.png", width: 200),
                        ],
                      ),
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
                    child: SizedBox(
                      width: 150,  // largura total do botão
                      height: 190, // altura total do botão
                      child: Column(
                        children: [
                          Text(
                            "Projeto",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: const Color.fromRGBO(95, 170, 217, 1.0),
                              fontSize: 24,
                            ),
                          ),
                          Image.asset("imagens/tcc.png", width: 200),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: _abrirCurso,
                    child: SizedBox(
                      width: 150,  // largura total do botão
                      height: 190, // altura total do botão
                      child: Column(
                        children: [
                          Text(
                            "Curso",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: const Color.fromRGBO(95, 170, 217, 1.0),
                              fontSize: 24,
                            ),
                          ),
                          Image.asset("imagens/curso.png", width: 200),
                        ],
                      ),
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
