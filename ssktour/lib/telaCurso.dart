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
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [const Color.fromARGB(255, 61, 120, 209), const Color.fromARGB(255, 61, 120, 209)],
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
                    'Sobre o Curso',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue[900],
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'O curso de Desenvolvimento de Sistemas oferece uma formação completa para quem deseja trabalhar com tecnologia. Aprenda programação, design de interfaces, bancos de dados, desenvolvimento mobile, web e muito mais!',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[800],
                      height: 1.5,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 30),

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
                      style: TextStyle(fontSize: 16),
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
