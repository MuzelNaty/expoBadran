import 'package:flutter/material.dart';

const Color primaryColor = Color(0xFF4E98D9);
const Color primaryLight = Color(0xFF5FAAD9);
const Color primaryDark = Color(0xFF0388A6);
const Color accentColor = Color(0xFF04BFBF);
const Color accentDark = Color(0xFF03A696);

class TelaTCC extends StatefulWidget {
  const TelaTCC({super.key});

  @override
  State<TelaTCC> createState() => _TelaTCCState();
}

class _TelaTCCState extends State<TelaTCC> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      appBar: AppBar(
        title: Text(
          "SSK Tour",
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
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
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
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'SSK Tour',
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Turismo sem barreiras',
                          style: TextStyle(fontSize: 18, color: Colors.white70),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 20),
                  Container(
                    width: 96,
                    height: 96,
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.05),
                          blurRadius: 10,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: Image.asset("imagens/logo.png"),
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SectionTitle(title: "Sobre o TCC"),
                  const SizedBox(height: 12),
                  Text(
                    "O SSK Tour é um projeto de TCC desenvolvido com o objetivo de facilitar o turismo para pessoas com deficiência ou mobilidade reduzida. A proposta é oferecer uma plataforma web que ajuda os usuários a encontrar hotéis acessíveis e pontos turísticos com acessibilidade, otimizando a experiência de viagem com segurança, conforto e autonomia.",
                    style: TextStyle(
                      height: 1.6,
                      color: Colors.grey.shade800,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 28),

                  const SectionTitle(title: "Funcionalidades"),
                  const SizedBox(height: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      _FeatureItem(
                        text:
                            "Permite pesquisar hotéis e resorts acessíveis no estado de São Paulo.",
                      ),
                      SizedBox(height: 12),
                      _FeatureItem(
                        text:
                            "Exibe informações detalhadas sobre a acessibilidade dos locais, como quartos adaptados e serviços inclusivos.",
                      ),
                      SizedBox(height: 12),
                      _FeatureItem(
                        text:
                            "Oferece links para redirecionar o usuário ao site oficial para reservas.",
                      ),
                      SizedBox(height: 12),
                      _FeatureItem(
                        text:
                            "Permite cadastro de usuários, salvamento de preferências e histórico de buscas.",
                      ),
                      SizedBox(height: 12),
                      _FeatureItem(
                        text:
                            "Suporta formatos acessíveis, como leitores de tela, descrições em imagens e alto contraste.",
                      ),
                    ],
                  ),

                  const SizedBox(height: 28),

                  const SectionTitle(title: "Tecnologias Usadas"),
                  const SizedBox(height: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      _FeatureItemRich(
                        label: "Frontend",
                        description: "HTML, CSS e JavaScript",
                      ),
                      SizedBox(height: 12),
                      _FeatureItemRich(
                        label: "Backend",
                        description: "PHP (em desenvolvimento)",
                      ),
                      SizedBox(height: 12),
                      _FeatureItemRich(
                        label: "Banco de Dados",
                        description: "SQL",
                      ),
                    ],
                  ),

                  const SizedBox(height: 28),

                  const SectionTitle(title: "Motivação para o projeto"),
                  const SizedBox(height: 12),
                  Text(
                    "Escolhemos desenvolver o SSK Tour porque acreditamos que o turismo deve ser para todos. Muitas pessoas com deficiência enfrentam dificuldades ao viajar, e com essa plataforma queremos ajudar a mudar isso.",
                    style: TextStyle(
                      height: 1.6,
                      color: Colors.grey.shade800,
                      fontSize: 16,
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

class SectionTitle extends StatelessWidget {
  final String title;
  final double fontSize;

  const SectionTitle({super.key, required this.title, this.fontSize = 22});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: fontSize,
        color: primaryDark,
        letterSpacing: 0.4,
      ),
    );
  }
}

class _FeatureItem extends StatelessWidget {
  final String text;

  const _FeatureItem({required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "• ",
          style: TextStyle(fontSize: 20, height: 1.5, color: primaryDark),
        ),
        Expanded(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey.shade800,
              height: 1.5,
            ),
          ),
        ),
      ],
    );
  }
}

class _FeatureItemRich extends StatelessWidget {
  final String label;
  final String description;

  const _FeatureItemRich({
    required this.label,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "• ",
          style: TextStyle(fontSize: 20, height: 1.5, color: primaryDark),
        ),
        Expanded(
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "$label: ",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: primaryDark,
                    fontSize: 16,
                    height: 1.5,
                  ),
                ),
                TextSpan(
                  text: description,
                  style: TextStyle(
                    color: Colors.grey.shade800,
                    fontSize: 16,
                    height: 1.5,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
