import 'package:flutter/material.dart';

class TelaTCC extends StatefulWidget {
  const TelaTCC({super.key});

  @override
  State<TelaTCC> createState() => _TelaTCCState();
}

class _TelaTCCState extends State<TelaTCC> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(title: Text("Serviços"), backgroundColor: Colors.green),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset("images/detalhe_servico.png"),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      "Nossos servico",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text("Consultoria"),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text("Cálculo de preço"),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text("Acompanhamento de projeto"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}