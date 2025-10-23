import 'package:flutter/material.dart';

class TelaIntegrantes extends StatefulWidget {
  const TelaIntegrantes({super.key});

  @override
  State<TelaIntegrantes> createState() => _TelaIntegrantesState();
}

class _TelaIntegrantesState extends State<TelaIntegrantes> {
  final List<Map<String, String>> pessoas = [
    {
      'nome': 'Antonela Gomes',
      'cargo': 'Redator Técnico',
      'imagem': 'imagens/antonela.jpg',
    },
    {
      'nome': 'Eloise Dias',
      'cargo': 'Analista de Requisitos',
      'imagem': 'imagens/eloise.jpg',
    },
    {
      'nome': 'Erick Sebastião',
      'cargo': 'Desenvolvedor Back-end',
      'imagem': 'imagens/erick.jpg',
    },
    {
      'nome': 'Julia Oliveira',
      'cargo': 'Analista de Requisitos',
      'imagem': 'imagens/julia.jpg',
    },
    {
      'nome': 'Laura Tibúrcio',
      'cargo': 'Documentador',
      'imagem': 'imagens/laura.jpg',
    },
    {
      'nome': 'Maria Eduarda Soares',
      'cargo': 'Analista de Teste',
      'imagem': 'imagens/maria.jpg',
    },
    {
      'nome': 'Nataly Müzel',
      'cargo': 'Desenvolvedor Front-end',
      'imagem': 'imagens/nataly.jpg',
    },
    {
      'nome': 'Tiago Mendes',
      'cargo': 'Documentador',
      'imagem': 'imagens/tiago.jpg',
    },
  ];

  List<Widget> construirLinhas() {
    List<Widget> linhas = [];
    for (int i = 0; i < pessoas.length; i++) {
      final card = construirCard(pessoas[i]);
      linhas.add(
        Padding(
        padding: const EdgeInsets.only(bottom: 16),
        child: card,
      ),
      );
    }
    return linhas;
  }

  Widget construirCard(Map<String, String> pessoa) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.white, Color.fromARGB(255, 244, 253, 255)],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Color.fromARGB(255, 61, 120, 209),
                    width: 3,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: ClipOval(
                  child: Image.asset(pessoa['imagem']!, fit: BoxFit.cover),
                ),
              ),
              SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      pessoa['nome']!,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      pessoa['cargo']!,
                      style: TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(255, 72, 72, 72),
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text(
          "Sobre a Equipe",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 24,
          ),
        ),
        backgroundColor: const Color.fromRGBO(95, 170, 217, 1.0),
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(255, 61, 120, 209),
                    Color.fromARGB(255, 61, 120, 209),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Equipe de Desenvolvimento da SSK Tour',
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Saiba mais sobre quem faz parte do time!',
                          style: TextStyle(fontSize: 18, color: Colors.white70),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 20),
                ],
              ),
            ),
            ...construirLinhas(),
          ],
        ),
      ),
    );
  }
}
