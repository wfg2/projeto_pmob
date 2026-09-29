import 'package:flutter/material.dart';
import 'package:projeto/domain/meals.dart';
import '../api/meals_api.dart';

class DetailPage extends StatefulWidget {
  Meals meals;

  DetailPage({super.key, required this.meals});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {

  final Mealsapi mealsapi = Mealsapi();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            child: Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    spreadRadius: 1,
                    blurRadius: 2,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
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
          ),

          Padding(
            padding: EdgeInsets.only(top: 12, bottom: 12, left: 12, right: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'INFORMAÇÕES GERAIS:',
                  style: TextStyle(
                      color: Color(0xFF1800ad),
                      fontFamily: 'Oswald',
                      fontSize: 25,
                      fontWeight: FontWeight.bold
                  )
                ),
                SizedBox(height: 6),
                buildInfoGerais(),
              ],
            ),
          ),

          Padding(
            padding: EdgeInsets.only(left: 12.0, right: 12, bottom: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Padding(
                  padding: EdgeInsets.only(top: 8, bottom: 6),
                  child: Text(
                    'INGREDIENTES PRINCIPAIS:',
                    style: TextStyle(
                      fontFamily: 'Oswald',
                      fontSize: 25,
                      color: Color(0xFF1800ad),
                      fontWeight: FontWeight.bold
                    )
                  ),
                ),

                Wrap(
                  spacing: 12,
                  runSpacing: 12,
                  children: [
                    for (int i = 0; i < widget.meals.ingredientes.length; i++)
                      ingredienteBox(
                          widget.meals.ingredientes[i],
                          widget.meals.medidas[i]),
                  ]
                ),

                Padding(
                  padding: EdgeInsets.only(top: 20, bottom: 6),
                  child: Text(
                    'MODO DE PREPARO:',
                      style: TextStyle(
                      color: Color(0xFF1800ad),
                      fontFamily: 'Oswald',
                      fontSize: 25,
                      fontWeight: FontWeight.bold
                      )
                  ),
                ),
                SizedBox(height: 6),
                textbox(widget.meals.instrucoes)
              ],
            ),
          )
        ],
      ),
    );
  }

  buildInfoGerais() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14, horizontal: 14),
      decoration: BoxDecoration(
        color: Color(0xFFedeaff),
        borderRadius: BorderRadius.circular(13),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade400,
            spreadRadius: 1,
            blurRadius: 2,
            offset: Offset(0, 1.5),
          )
        ]
      ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          buildInfos(
            icon: Icon(Icons.restaurant_menu, size: 16, color: Color(0xFF303f9f)),
            text: 'Categoria:',
            valor: widget.meals.categoria,
          ),
          Container(
            width: 1,
            height: 40,
            color: Color(0xFF3f51b5),
          ),
          buildInfos(
            icon: Icon(Icons.flag, size: 16, color: Color(0xFF303f9f)),
            text: 'País:',
            valor: widget.meals.pais,
          )
        ]
      )
    );
  }

  buildInfos({required Icon icon, required String text, required String valor}) {
    return Column(
      children: [
        Row(
          children: [
            icon,
            SizedBox(width: 6),
            Text(
              text,
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 15,
                  color: Color(0xFF1800ad),
                  fontWeight: FontWeight.w600
                ),
            )
          ],
        ),
        SizedBox(height: 6),
        Text(
          valor,
          style: TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 15,
            color: Color(0xFF1800ad),
          ),
        )
      ],
    );
  }

  textbox(String text) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xFFedeaff),
        borderRadius: BorderRadius.circular(13),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade400,
            spreadRadius: 1,
            blurRadius: 2,
            offset: Offset(0, 1.5),
          )
        ]
      ),
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Text(
          text,
          style: textStyle(15),
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
  
  ingredienteBox(String nomeIngrediente, String medida) {
    final String imageUrl = mealsapi.imagemIngrediente(nomeIngrediente);

    return Container(
      padding: EdgeInsets.all(6),
      height: 80,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xFFedeaff),
        borderRadius: BorderRadius.circular(13),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade400,
            spreadRadius: 1,
            blurRadius: 2,
            offset: Offset(0, 1),
          )
        ]
      ),
      child: Row(
        children: [
          Image.network(
            imageUrl,
            width: 80,
            height: 80,
            fit: BoxFit.contain
          ),
          SizedBox(width: 10),
          Container(
            width: 1,
            height: 40,
            color: Color(0xFF3f51b5),
          ),
          SizedBox(width: 14),
          Expanded(
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                Text(
                  '$nomeIngrediente: ',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 16,
                    color: Color(0xFF303f9f),
                    fontWeight: FontWeight.w600
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  medida,
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 15,
                    color: Color(0xFF303f9f),
                    fontWeight: FontWeight.w500
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                )
              ],
            )
          )
        ],
      ),
    );
  }

  textStyle(double? size) {
    return TextStyle(
        fontFamily: 'Montserrat',
        fontSize: size,
        color: Color(0xFF303f9f),
    );
  }

  buildAppBar() {
    return AppBar(
      backgroundColor: Color(0xFF1800ad),
      leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back, color: Colors.white)
      ),
      centerTitle: true,
      title: Text(
        widget.meals.nome,
        style: TextStyle(
            color: Colors.white,
            fontFamily: 'Allison',
            fontSize: 40,
            fontWeight: FontWeight.bold
        ),
      ),
    );
  }
}