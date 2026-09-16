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
        backgroundColor: Color(0xFF1800ad),
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
            padding: const EdgeInsets.only(top: 12, left: 12, right: 12, bottom: 8),
            child: ClipRRect(
              borderRadius: BorderRadiusGeometry.all(
                Radius.circular(13)
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
              'INFORMAÇÕES GERAIS:',
              style: TextStyle(
                  color: Color(0xFF1800ad),
                  fontFamily: 'Oswald',
                  fontSize: 25,
                  fontWeight: FontWeight.bold
              )
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12.0, right: 12, top: 6),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                titles('Nome: ', widget.meals.nome),
                titles('Categoria: ', widget.meals.categoria),
                titles('País de Origem: ', widget.meals.pais),
                titles('Ingredientes: ', widget.meals.ingredientes.join(', ')),
                SizedBox(height: 6),
                Divider(
                    color: Color(0xFF1800ad),
                    thickness: 3
                ),
                SizedBox(height: 6),
                Text(
                  'MODO DE PREPARO: ',
                    style: TextStyle(
                    color: Color(0xFF1800ad),
                    fontFamily: 'Oswald',
                    fontSize: 25,
                    fontWeight: FontWeight.bold
                    )
                ),
                SizedBox(height: 6),
                Text(
                  widget.meals.instrucoes,
                  style: textStyle(15),
                  textAlign: TextAlign.justify,
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
        color: Color(0xFF1800ad),
        //fontWeight: FontWeight.bold
    );
  }

  titles(String title, String meal) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4.0),
      child: RichText(
        textAlign: TextAlign.justify,
        text: TextSpan(
        children: [
          TextSpan(
            text: title,
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 16,
              color: Color(0xFF1800ad),
              fontWeight: FontWeight.bold
            )
          ),
          TextSpan(
            text: meal,
            style: textStyle(15),
          )
        ],
      ),
      ),
    );
  }
}