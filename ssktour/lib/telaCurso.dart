import 'package:flutter/material.dart';

class TelaCurso extends StatefulWidget {
  const TelaCurso({super.key});

  @override
  State<TelaCurso> createState() => _TelaCursoState();
}

class _TelaCursoState extends State<TelaCurso> {
  final Map<String, List<String>> gradeCurricular = {
    '1º Ano': [
      'Banco de Dados I',
      'Design Digital',
      'Fundamentos da Informática',
      'Programação Web I',
      'Técnicas de Programação e Algoritmos',
    ],
    '2º Ano': [
      'Banco de Dados II',
      'Desenvolvimento de Sistemas',
      'Programação de Aplicativos Mobile I',
      'Programação Web II',
    ],
    '3º Ano': [
      'Internet, Protocolos e Segurança de Sistemas da Informação',
      'Planejamento e Desenvolvimento do Trabalho de Conclusão de Curso (TCC)',
      'Programação de Aplicativos Mobile II',
      'Programação Web III',
      'Qualidade e Teste de Software',
      'Sistemas Embarcados',
    ],
  };

  final List<String> professores = [
    'Andre Luis de Souza Silva',
    'Andrea Avezum Martus',
    'Evaldo Fernandes Reu Junior',
    'Jessica Cristina dos Santos Ferreira Pazeto',
    'Ricardo de Moraes',
    'Wesley Abdo Pinto',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Sobre o Curso",
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
                    const Color.fromARGB(255, 61, 120, 209),
                    const Color.fromARGB(255, 61, 120, 209),
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
                          'Curso de Desenvolvimento de Sistemas',
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Aprenda a criar aplicativos, sites, bancos de dados e muito mais!',
                          style: TextStyle(fontSize: 18, color: Colors.white70),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    flex: 1,
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Image.network(
                        'https://cdn-icons-png.flaticon.com/512/1055/1055687.png',
                        height: 90,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Text(
                    'Conheça o Curso',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue[900],
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'O curso Técnico em Desenvolvimento de Sistemas integrado ao Ensino Médio é uma formação completa que une a educação básica ao ensino técnico profissionalizante. Durante três anos, os alunos cursam o Ensino Médio regular juntamente com disciplinas técnicas voltadas à área de tecnologia da informação. O objetivo é preparar jovens para atuarem no desenvolvimento de softwares, aplicativos e sistemas diversos, utilizando linguagens de programação, bancos de dados, lógica computacional, e práticas de análise e modelagem de sistemas.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[800],
                      height: 1.5,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 30),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Grade Curricular',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue[900],
                          ),
                        ),
                        SizedBox(height: 10),
                        ...gradeCurricular.entries.map(
                          (entry) => Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                entry.key,
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue[700],
                                ),
                              ),
                              SizedBox(height: 10),
                              ...entry.value.map(
                                (disciplina) => Padding(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 4,
                                  ),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.check_circle_outline,
                                        color: Colors.blue,
                                        size: 20,
                                      ),
                                      SizedBox(width: 10),
                                      Expanded(
                                        child: Text(
                                          disciplina,
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.grey[800],
                                          ),
                                        ),
                                      ),
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
                  SizedBox(width: 40),

                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Professores',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue[900],
                          ),
                        ),
                        SizedBox(height: 10),
                        ...professores.map(
                          (professor) => Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4),
                            child: Row(
                              children: [
                                Icon(Icons.person_outline, color: Colors.blue),
                                SizedBox(width: 10),
                                Expanded(
                                  child: Text(
                                    professor,
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.grey[800],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],

                  // Botão
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue[800],
                      padding: EdgeInsets.symmetric(
                        horizontal: 40,
                        vertical: 15,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Inscrição realizada com sucesso!'),
                        ),
                      );
                    },
                    child: Text(
                      'Inscreva-se Agora',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
