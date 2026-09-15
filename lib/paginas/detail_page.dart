import 'package:flutter/material.dart';
import 'package:projeto/domain/meals.dart';

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
          Image.network(
            widget.meals.urlImagem,
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                titles('Receita: ', widget.meals.nome),
                titles('Categoria: ', widget.meals.categoria),
                titles('País de Origem: ', widget.meals.pais),
                titles('Ingredientes: ', widget.meals.ingredientes.join(', ')),
                Text(
                  'Modo de Preparo: ',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 16,
                      color: Color(0xFF002566),
                      fontWeight: FontWeight.bold
                  ),
                ),
                Text(
                  widget.meals.instrucoes,
                  style: textStyle(15)
                )
              ],
            ),
          )
        ],
      ),
    );
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
    return Row(
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
          style: textStyle(16)
        )
      ],
    );
  }
}

