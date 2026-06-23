import 'package:flutter/material.dart';

class NovaReceita extends StatefulWidget {
  const NovaReceita({Key? key}) : super(key: key);

  @override
  State<NovaReceita> createState() => _NovaReceitaState();
}

class _NovaReceitaState extends State<NovaReceita> {
  final Color corPrincipal = Color(0xff100ea6);

  TextEditingController nome = TextEditingController();
  TextEditingController tempo = TextEditingController();
  TextEditingController ingredientes = TextEditingController();
  TextEditingController descricao = TextEditingController();
  TextEditingController foto = TextEditingController();

  String tipo = "Nordestina";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nova receita",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)
        ),
        backgroundColor: Color(0xff100ea6),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(color: corPrincipal, borderRadius: BorderRadius.circular(16)),
              child: Column(
                children: [
                  Icon(Icons.restaurant_menu, size: 60, color: Colors.white,
                  ),
                  SizedBox(height: 10),
                  Text("Compartilhe sua receita!", textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            campoTexto(
              controller: nome,
              label: "Nome da receita:",
              icon: Icons.fastfood,
            ),
            SizedBox(height: 15),
            Card(
              elevation: 3,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: DropdownButtonFormField<String>(
                  initialValue: tipo,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.public,
                      color: corPrincipal,
                    ),
                  ),
                  items: [
                    "Nordestina",
                    "Italiana",
                    "Japonesa",
                    "Mineira",
                    "Vegana",
                  ].map((tipo) {
                    return DropdownMenuItem(
                      value: tipo,
                      child: Text(tipo),
                    );
                  }).toList(),
                  onChanged: (valor) {
                    setState(() {
                      tipo = valor!;
                    });
                  },
                ),
              ),
            ),
            SizedBox(height: 15),
            campoTexto(
              controller: tempo,
              label: "Tempo de preparo:",
              icon: Icons.timer,
            ),
            SizedBox(height: 15),
            campoTexto(
              controller: ingredientes,
              label: "Ingredientes:",
              icon: Icons.shopping_cart,
              linhas: 5,
            ),
            SizedBox(height: 15),
            campoTexto(
              controller: descricao,
              label: "Descrição da receita:",
              icon: Icons.description,
              linhas: 5,
            ),
            SizedBox(height: 15),
            campoTexto(
              controller: foto,
              label: "URL da foto da receita:",
              icon: Icons.image,
            ),
            SizedBox(height: 25),
            SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: corPrincipal,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {
                  if (nome.text.isEmpty ||
                      tempo.text.isEmpty ||
                      ingredientes.text.isEmpty ||
                      descricao.text.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("Preencha todos os campos!"),
                      ),
                    );
                    return;
                  }

                  if (foto.text.isNotEmpty && !foto.text.startsWith('http')){
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("Coloque uma URL válida de imagem!"),
                      ),
                    );
                    return;
                  }

                  nome.clear();
                  tempo.clear();
                  ingredientes.clear();
                  descricao.clear();
                  foto.clear();

                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("A receita foi postada com sucesso!"),
                    ),

                  );
                },
                icon: Icon(Icons.upload, color: Colors.white),
                label: Text(
                  "Publicar receita",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget campoTexto({
    required TextEditingController controller,
    required String label,
    required IconData icon,
    int linhas = 1,
  }) {
    return Card(
      elevation: 3,
      child: TextField(
        controller: controller,
        maxLines: linhas,
        decoration: InputDecoration(
          prefixIcon: Icon(
            icon,
            color: corPrincipal,
          ),
          labelText: label,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }
}