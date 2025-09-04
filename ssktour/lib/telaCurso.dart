import 'package:flutter/material.dart';

class TelaCurso extends StatefulWidget {
  const TelaCurso({super.key});

  @override
  State<TelaCurso> createState() => _TelaCursoState();
}

class _TelaCursoState extends State<TelaCurso> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text("Contato"), backgroundColor: Colors.green),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset("images/detalhe_contato.png"),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text("Contato", style: TextStyle(fontSize: 20)),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text("Email: consultoria@consultoria.com"),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text("Telefone: (11)3558-9898")
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text("Celular: (11)99999-9898"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}