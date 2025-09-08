import 'package:flutter/material.dart';

// Definição das cores personalizadas
const Color primaryColor = Color(0xFF4E98D9); // #4E98D9
const Color primaryLight = Color(0xFF5FAAD9); // #5FAAD9
const Color primaryDark = Color(0xFF0388A6); // #0388A6
const Color accentColor = Color(0xFF04BFBF); // #04BFBF
const Color accentDark = Color(0xFF03A696); // #03A696

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
        title: const Text("SSK Tour"),
        backgroundColor: primaryColor,
        elevation: 0,
        centerTitle: true,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Cabeçalho com logo e título
            Container(
              height: 240,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [primaryColor, primaryLight],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                boxShadow: [
                  BoxShadow(
                    color: primaryDark.withOpacity(0.3),
                    blurRadius: 12,
                    offset: const Offset(0, 6),
                  ),
                ],
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(28),
                  bottomRight: Radius.circular(28),
                ),
              ),
              child: SafeArea(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Logo circular com sombra suave
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
                    const SizedBox(height: 16),
                    // Título principal
                    Text(
                      "SSK Tour",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.5,
                        shadows: const [
                          Shadow(
                            blurRadius: 2,
                            color: Colors.black26,
                            offset: Offset(0, 1),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 6),
                    // Subtítulo
                    Text(
                      "Turismo sem barreiras",
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.85),
                        fontStyle: FontStyle.italic,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Conteúdo principal
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Sobre o TCC
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
                

                  // Funcionalidades
                  const SectionTitle(title: "Funcionalidades"),
                  const SizedBox(height: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      _FeatureItem(
                        text: "Permite pesquisar hotéis e resorts acessíveis no estado de São Paulo.",
                      ),
                      SizedBox(height: 12),
                      _FeatureItem(
                        text: "Exibe informações detalhadas sobre a acessibilidade dos locais, como quartos adaptados e serviços inclusivos.",
                      ),
                      SizedBox(height: 12),
                      _FeatureItem(
                        text: "Oferece links para redirecionar o usuário ao site oficial para reservas.",
                      ),
                      SizedBox(height: 12),
                      _FeatureItem(
                        text: "Permite cadastro de usuários, salvamento de preferências e histórico de buscas.",
                      ),
                      SizedBox(height: 12),
                      _FeatureItem(
                        text: "Suporta formatos acessíveis, como leitores de tela, descrições em imagens e alto contraste.",
                      ),
                    ],
                  ),

                  const SizedBox(height: 28),

                  // Tecnologias Usadas
                  const SectionTitle(title: "Tecnologias Usadas"),
                  const SizedBox(height: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      _FeatureItemRich(label: "Frontend", description: "HTML, CSS e JavaScript"),
                      SizedBox(height: 12),
                      _FeatureItemRich(label: "Backend", description: "PHP (em desenvolvimento)"),
                      SizedBox(height: 12),
                      _FeatureItemRich(label: "Banco de Dados", description: "SQL"),
                    ],
                  ),

                  const SizedBox(height: 28),

                  // Sobre o TCC
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

// Título de seção reutilizável
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

// Item de lista simples
class _FeatureItem extends StatelessWidget {
  final String text;

  const _FeatureItem({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "• ",
          style: TextStyle(
            fontSize: 20,
            height: 1.5,
            color: primaryDark,
          ),
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

// Item de lista com label em negrito e cor azul
class _FeatureItemRich extends StatelessWidget {
  final String label;
  final String description;

  const _FeatureItemRich({
    super.key,
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
          style: TextStyle(
            fontSize: 20,
            height: 1.5,
            color: primaryDark,
          ),
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
