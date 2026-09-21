import 'package:flutter/material.dart';
import 'package:projeto/api/receitas_api.dart';
import 'package:projeto/domain/Receitas.dart';

class NovaReceita extends StatefulWidget {
  const NovaReceita({Key? key}) : super(key: key);

  @override
  State<NovaReceita> createState() => _NovaReceitaState();
}

class _NovaReceitaState extends State<NovaReceita> {
  Color corPrincipal = Color(0xff100ea6);

  TextEditingController nome = TextEditingController();
  TextEditingController categoria = TextEditingController();
  TextEditingController tempo = TextEditingController();
  TextEditingController ingredientes = TextEditingController();
  TextEditingController descricao = TextEditingController();
  TextEditingController foto = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                  Icon(Icons.restaurant, size: 30, color: Colors.white,
                  ),
                  SizedBox(height: 10),
                  Text("Compartilhe sua receita", textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            TextField(
              controller: nome,
              decoration: InputDecoration(
                suffixIcon: IconButton(onPressed: onPressedFindByName, icon: Icon(Icons.search)),
                hintText: 'Buscar receita pelo nome...',
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xff100ea6)),
                )
              ),
            ),
            SizedBox(height: 15),
            campoTexto(
              controller: categoria,
              label: "Categoria:",
              icon: Icons.food_bank,
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
            SizedBox(height: 15),
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
                onPressed: () {},
                icon: Icon(Icons.upload, color: Colors.white),
                label: Text(
                  "Publicar receita",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    ),
    );
  }

  Future<void> onPressedFindByName() async {
    String name = nome.text;
    Receitas receita = await ReceitasApi().findByName(name);

    nome.text = '';
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