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
      appBar: AppBar(
        title: Text("Escola"),
        backgroundColor: Colors.green,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Header com gradiente e logo
            Container(
              height: 220,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.green.shade600, Colors.green.shade300],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.08),
                    blurRadius: 12,
                    offset: Offset(0, 6),
                  ),
                ],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(24),
                  bottomRight: Radius.circular(24),
                ),
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    top: 28,
                    child: Column(
                      children: [
                        Container(
                          width: 88,
                          height: 88,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                blurRadius: 10,
                                offset: Offset(0, 6),
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(14),
                            child: Image.asset(
                              "images/logo.png",
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        SizedBox(height: 12),
                        Text(
                          "Colégio SSK",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.3,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          "Excelência em educação e inovação",
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.95),
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // Conteúdo
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Sobre
                  Text(
                    "Sobre a Escola",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Nossa escola oferece uma formação completa, com foco em valores,"
                    " cidadania e tecnologia. Contamos com professores qualificados,"
                    " laboratórios modernos e atividades extracurriculares que estimulam"
                    " a criatividade e o pensamento crítico.",
                    style: TextStyle(fontSize: 15, height: 1.5, color: Colors.black87),
                  ),
                  SizedBox(height: 20),
                  // Informações principais
                  _InfoCard(
                    icon: Icons.location_on_rounded,
                    title: "Endereço",
                    subtitle: "Av. das Flores, 123 - Centro, Cidade/UF",
                    color: Colors.green,
                  ),
                  SizedBox(height: 12),
                  _InfoCard(
                    icon: Icons.call_rounded,
                    title: "Telefone",
                    subtitle: "(11) 4002-8922",
                    color: Colors.teal,
                  ),
                  SizedBox(height: 12),
                  _InfoCard(
                    icon: Icons.email_rounded,
                    title: "E-mail",
                    subtitle: "contato@colegiossk.edu.br",
                    color: Colors.indigo,
                  ),
                  SizedBox(height: 20),
                  // Diferenciais / Cursos
                  Text(
                    "Cursos e Diferenciais",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(height: 8),
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: [
                      _buildChip("Ensino Fundamental"),
                      _buildChip("Ensino Médio"),
                      _buildChip("Laboratório de Informática"),
                      _buildChip("Esportes"),
                      _buildChip("Clube de Robótica"),
                      _buildChip("Biblioteca Atualizada"),
                    ],
                  ),
                  SizedBox(height: 24),
                  // Galeria de imagens
                  Text(
                    "Galeria",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(height: 12),
                  GridView.count(
                    crossAxisCount: 2,
                    mainAxisSpacing: 12,
                    crossAxisSpacing: 12,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      _GalleryImage(path: "images/integrante1.png"),
                      _GalleryImage(path: "images/integrante2.png"),
                      _GalleryImage(path: "images/integrante3.png"),
                      _GalleryImage(path: "images/integrante4.png"),
                      _GalleryImage(path: "images/integrante5.png"),
                      _GalleryImage(path: "images/integrante6.png"),
                    ],
                  ),
                  SizedBox(height: 24),
                  // Ações
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                            foregroundColor: Colors.white,
                            padding: EdgeInsets.symmetric(vertical: 14),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text("Abrindo site da escola...")),
                            );
                          },
                          icon: Icon(Icons.public_rounded),
                          label: Text("Visitar site"),
                        ),
                      ),
                      SizedBox(width: 12),
                      Expanded(
                        child: OutlinedButton.icon(
                          style: OutlinedButton.styleFrom(
                            foregroundColor: Colors.green.shade700,
                            side: BorderSide(color: Colors.green.shade400, width: 1.2),
                            padding: EdgeInsets.symmetric(vertical: 14),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text("Ligando para a escola...")),
                            );
                          },
                          icon: Icon(Icons.call_rounded),
                          label: Text("Ligar"),
                        ),
                      ),
                    ],
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
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 42,
              height: 42,
              decoration: BoxDecoration(
                color: color.withOpacity(0.12),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(icon, color: color),
            ),
            SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(height: 2),
                  Text(
                    subtitle,
                    style: TextStyle(fontSize: 13, color: Colors.black54),
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
    backgroundColor: Colors.green.shade50,
    labelStyle: TextStyle(color: Colors.green.shade800, fontWeight: FontWeight.w600),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
  );
}

class _GalleryImage extends StatelessWidget {
  final String path;
  const _GalleryImage({required this.path});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: AspectRatio(
        aspectRatio: 1,
        child: Ink.image(
          image: AssetImage(path),
          fit: BoxFit.cover,
          child: InkWell(
            onTap: () {
              showDialog(
                context: context,
                builder: (_) => Dialog(
                  insetPadding: EdgeInsets.all(16),
                  backgroundColor: Colors.transparent,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Stack(
                      children: [
                        Positioned.fill(child: Image.asset(path, fit: BoxFit.cover)),
                        Positioned(
                          top: 8,
                          right: 8,
                          child: Material(
                            color: Colors.black54,
                            shape: const CircleBorder(),
                            child: IconButton(
                              icon: Icon(Icons.close, color: Colors.white),
                              onPressed: () => Navigator.of(context).pop(),
                            ),
                          ),
                        ),
                      ],
                    ),
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
