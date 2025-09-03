import 'package:flutter/material.dart';

class TelaEscola extends StatefulWidget {
  const TelaEscola({super.key});

  @override
  State<TelaEscola> createState() => _TelaEscolaState();
}

class _TelaEscolaState extends State<TelaEscola> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text("Empresa"), backgroundColor: Colors.green),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset("images/detalhe_empresa.png"),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text("Empresa", style: TextStyle(fontSize: 20)),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 16, bottom: 16),
                child: Text(
                  "Quickly and easily generate Lorem Ipsum placeholder text.\n Select the number of characters, words, sentences or paragraphs, and hit generate!",
                ),
              ),
              Text(
                "Quickly and easily generate Lorem Ipsum placeholder text.\n Select the number of characters, words, sentences or paragraphs, and hit generate!",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
