import 'package:flutter/material.dart';

// Definição das cores personalizadas
const Color primaryColor = Color(0xFF4E98D9); // #4E98D9
const Color primaryLight = Color(0xFF5FAAD9); // #5FAAD9
const Color primaryDark = Color(0xFF0388A6);  // #0388A6
const Color accentColor = Color(0xFF04BFBF);  // #04BFBF
const Color accentDark = Color(0xFF03A696);   // #03A696

class TelaEscola extends StatefulWidget {
  const TelaEscola({super.key});

  @override
  State<TelaEscola> createState() => _TelaEscolaState();
}

class _TelaEscolaState extends State<TelaEscola> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      appBar: AppBar(
        title: const Text("Etec Pedro Badran"),
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
                      child: Image.asset(
                        "images/logo.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                    const SizedBox(height: 16),
                    // Título principal
                    Text(
                      "Etec Pedro Badran",
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
                      "Excelência em educação e inovação",
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
                  // Seção Sobre a Escola
                  const SectionTitle(title: "Sobre a Escola"),
                  const SizedBox(height: 12),
                  Text(
                    "A Escola Técnica Estadual Pedro Badran, localizada em São Joaquim da Barra, SP, é uma instituição de ensino técnico e médio integrada ao Centro Paula Souza desde 1994. Fundada em 1959, a escola homenageia o imigrante libanês Pedro Badran, que contribuiu para a educação profissionalizante na região.",
                    style: TextStyle(
                      height: 1.6,
                      color: Colors.grey.shade800,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 28),

                  // Cartões de informações principais
                  _InfoCard(
                    icon: Icons.location_on_rounded,
                    title: "Endereço",
                    subtitle: "Rua Maranhão, 1225 - Vila Deienno",
                    color: accentColor,
                  ),
                  const SizedBox(height: 16),
                  _InfoCard(
                    icon: Icons.call_rounded,
                    title: "Telefone",
                    subtitle: "(16) 3818-2192",
                    color: accentDark,
                  ),
                  const SizedBox(height: 16),
                  _InfoCard(
                    icon: Icons.email_rounded,
                    title: "E-mail",
                    subtitle: "e094dir@cps.sp.gov.br",
                    color: primaryDark,
                  ),
                  const SizedBox(height: 16),
                  _InfoCard(
                    icon: Icons.access_time_rounded,
                    title: "Funcionamento",
                    subtitle: "Segunda a Sexta das 07:00 às 23:00",
                    color: primaryDark,
                  ),
                  const SizedBox(height: 28),

                  // Cursos e Diferenciais
                  const SectionTitle(
                    title: "Cursos e Diferenciais",
                    fontSize: 20,
                  ),
                  const SizedBox(height: 16),

                  // Cursos para Ensino Médio Integrado
                  const SectionTitle(
                    title: "Cursos para Ensino Médio Integrado",
                    fontSize: 18,
                  ),
                  const SizedBox(height: 8),
                  Wrap(
                    spacing: 10,
                    runSpacing: 10,
                    children: [
                      _buildChip("Administração"),
                      _buildChip("Marketing"),
                      _buildChip("Desenvolvimento de Sistemas"),
                      _buildChip("Meio Ambiente"),
                      _buildChip("Eletrônica (Noturno)"),
                      _buildChip("Informática para Internet (Noturno)"),
                    ],
                  ),
                  const SizedBox(height: 24),

                  // Cursos Técnicos
                  const SectionTitle(
                    title: "Cursos Técnicos",
                    fontSize: 18,
                  ),
                  const SizedBox(height: 8),
                  Wrap(
                    spacing: 10,
                    runSpacing: 10,
                    children: [
                      _buildChip("Administração"),
                      _buildChip("Desenvolvimento de Sistemas"),
                      _buildChip("Eletroeletrônica"),
                      _buildChip("Eletrônica"),
                      _buildChip("Eletrotécnica"),
                      _buildChip("Informática"),
                      _buildChip("Química"),
                      _buildChip("Secretariado"),
                      _buildChip("Segurança do Trabalho"),
                    ],
                  ),
                  const SizedBox(height: 32),

                  // Galeria de imagens
                  const SectionTitle(title: "Galeria", fontSize: 20),
                  const SizedBox(height: 16),
                  GridView.builder(
                    padding: EdgeInsets.zero,
                    itemCount: 3,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 14,
                      crossAxisSpacing: 14,
                      childAspectRatio: 1,
                    ),
                    itemBuilder: (context, index) {
                      final imagePaths = [
                      ];
                      return _GalleryImage(path: imagePaths[index]);
                    },
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

class _InfoCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final Color color;

  const _InfoCard({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shadowColor: color.withOpacity(0.25),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                color: color.withOpacity(0.15),
                borderRadius: BorderRadius.circular(14),
              ),
              child: Icon(icon, color: color, size: 26),
            ),
            const SizedBox(width: 18),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Colors.grey.shade900,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    subtitle,
                    style: TextStyle(
                      color: Colors.grey.shade600,
                      fontSize: 14,
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

Widget _buildChip(String text) {
  return Chip(
    label: Text(text),
    backgroundColor: primaryLight.withOpacity(0.3),
    labelStyle: const TextStyle(
      color: primaryDark,
      fontWeight: FontWeight.w700,
    ),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    elevation: 0,
  );
}

class _GalleryImage extends StatelessWidget {
  final String path;

  const _GalleryImage({super.key, required this.path});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
        aspectRatio: 1,
        child: Ink.image(
          image: AssetImage(path),
          fit: BoxFit.cover,
          child: InkWell(
            splashColor: accentColor.withOpacity(0.3),
            onTap: () {
              showDialog(
                context: context,
                builder: (_) => Dialog(
                  insetPadding: const EdgeInsets.all(20),
                  backgroundColor: Colors.transparent,
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(18),
                        child: Image.asset(path, fit: BoxFit.cover),
                      ),
                      Positioned(
                        top: 12,
                        right: 12,
                        child: Material(
                          color: Colors.black54,
                          shape: const CircleBorder(),
                          child: IconButton(
                            icon: const Icon(Icons.close, color: Colors.white),
                            onPressed: () => Navigator.of(context).pop(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
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