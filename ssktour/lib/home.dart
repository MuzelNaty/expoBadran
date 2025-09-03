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
  
  void _abrirEmpresa() => 
    Navigator.push(context, MaterialPageRoute(builder: (context) => TelaEscola()));
  void _abrirCliente() => 
    Navigator.push(context, MaterialPageRoute(builder: (context) => TelaIntegrantes()));
  void _abrirServico() => 
    Navigator.push(context, MaterialPageRoute(builder: (context) => TelaTCC()));
  void _abrirContato() => 
    Navigator.push(context, MaterialPageRoute(builder: (context) => TelaCurso()));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Projeto de TCC: SSK Tour"),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("images/logo.png"),
            Padding(padding: EdgeInsets.only(top:32),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: _abrirEmpresa,
                  child: Image.asset("images/menu_empresa.png"),
                ),
                GestureDetector(
                  onTap: _abrirServico,
                  child: Image.asset("images/menu_servico.png"),
                ),
                GestureDetector(
                  onTap: _abrirContato,
                  child: Image.asset("images/menu_contato.png"),
                ),
                GestureDetector(
                  onTap: _abrirCliente,
                  child: Image.asset("images/menu_cliente.png"),
                ),
              ],)
            )
          ],
        ),
      ),
    );
  }
}
