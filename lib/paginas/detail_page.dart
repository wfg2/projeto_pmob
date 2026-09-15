import 'package:flutter/material.dart';
import 'package:projeto/domain/meals.dart';
import 'package:translator/translator.dart';

class DetailPage extends StatefulWidget {
  Meals meals;

  DetailPage({super.key, required this.meals});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF002566),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back, color: Colors.white)
        ),
        title: Text(
          widget.meals.nome,
          style: TextStyle(
              color: Colors.white,
              fontFamily: 'Allison',
              fontSize: 40,
              fontWeight: FontWeight.bold
          ),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadiusGeometry.all(
                Radius.circular(16)
              ),
              child: Image.network(
                widget.meals.urlImagem,
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8, left: 12, right: 12),
            child: Text(
              'Informações da Receita:',
              style: TextStyle(
                  color: Color(0xFF002566),
                  fontFamily: 'Montserrat',
                  fontSize: 20,
                  fontWeight: FontWeight.bold
              )
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12.0, right: 12, top: 6),
            child: Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  titles('Nome: ', widget.meals.nome),
                  titles('Categoria: ', widget.meals.categoria),
                  titles('País de Origem: ', widget.meals.pais),
                  titles('Ingredientes: ', widget.meals.ingredientes.join(', ')),
                  SizedBox(height: 6),
                  Divider(
                      color: Color(0xFF002566),
                      thickness: 3
                  ),
                  SizedBox(height: 6),
                  titles('Modo de Preparo: ', widget.meals.instrucoes)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
  
  Future<String> traduzirTexto(String textoEn) async {
    final translator = GoogleTranslator();
    
    var translation = await translator.translate(textoEn, from: 'en', to: 'pt');
    
    return translation.text;
  }

  textStyle(double? size) {
    return TextStyle(
        fontFamily: 'Montserrat',
        fontSize: size,
        color: Color(0xFF002566),
        //fontWeight: FontWeight.bold
    );
  }

  titles(String title, String meal) {
    return Wrap(
      spacing: 1.5,
      children: [
        Text(
          title,
          style: TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 16,
            color: Color(0xFF002566),
            fontWeight: FontWeight.bold
          )
        ),
        Text(
          meal,
          style: textStyle(16),
          textAlign: TextAlign.justify,
        )
      ],
    );
  }
}

