import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'dart:math';
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
      body: buildListView(),
    );
  }

  buildListView() {
    return ListView(
      children: [
         Stack(
           children: [
             // imagem
             Image.network(
              widget.meals.urlImagem,
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),

             // page view
             Positioned(
               bottom: 8,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.horizontal_rule_rounded, color: Colors.white, size: 32),
                  Icon(Icons.horizontal_rule_rounded, color: Colors.white, size: 24),
                  Icon(Icons.horizontal_rule_rounded, color: Colors.white, size: 24),
                  Icon(Icons.horizontal_rule_rounded, color: Colors.white, size: 24),
                ],
              ),
             )
          ]
         ),

        Padding(
          padding: EdgeInsets.only(top: 12, bottom: 12, left: 12, right: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // nome da receita
              Row(
                children: [
                  Expanded(
                    child: Text(
                        widget.meals.nome,
                        style: TextStyle(
                          color: Color(0xFF2113FE),
                          fontFamily: 'Oswald',
                          fontSize: 28,
                          fontWeight: FontWeight.bold,

                        )
                    ),
                  ),
                  Icon(Icons.favorite_border_rounded, color: Color(0xFF2113FE), size: 32),
                ],
              ),
              SizedBox(height: 6),

              // info estrelas
              Row(
                children: [
                  Icon(Icons.star, color: Color(0xFF2113FE), size: 20),
                  Icon(Icons.star, color: Color(0xFF2113FE), size: 20),
                  Icon(Icons.star, color: Color(0xFF2113FE), size: 20),
                  Icon(Icons.star, color: Color(0xFF2113FE), size: 20),
                  Icon(Icons.star_half, color: Color(0xFF2113FE), size: 20),
                  SizedBox(width: 6),
                  Text(
                    widget.meals.avaliacao.toStringAsFixed(1),
                    style: TextStyle(
                      letterSpacing: 1,
                      fontFamily: 'Montserrat',
                      fontSize: 14,
                      color: Color(0xFF2113FE),
                    ),
                  )
                ],
              ),
              SizedBox(height: 10),

              buildInfoGerais(),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 12.0, right: 12, bottom: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              // title

              Padding(
                padding: EdgeInsets.only(top: 12, bottom: 6),
                child: Text(
                    'Ingredientes Principais',
                    style: TextStyle(
                        fontFamily: 'Oswald',
                        fontSize: 24,
                        color: Color(0xFF2113FE),
                        fontWeight: FontWeight.bold
                    )
                ),
              ),

              // ingredientes
              Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: [
                    for (int i = 0; i < widget.meals.ingredientes.length; i++)
                      ingredienteBox(
                          widget.meals.ingredientes[i],
                          widget.meals.medidas[i]),
                  ]
              ),

              // title
              Padding(
                padding: EdgeInsets.only(top: 24, bottom: 6),
                child: Text(
                    'Modo de Preparo',
                    style: TextStyle(
                        color: Color(0xFF2113FE),
                        fontFamily: 'Oswald',
                        fontSize: 24,
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
    );
  }

  buildInfoGerais() {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          buildInfos(
            icon: Icon(Icons.restaurant_menu_outlined, size: 14, color: Color(0xFF5C6B9C)),
            text: 'Categoria: ',
            valor: widget.meals.categoria,
          ),
          buildInfos(
            icon: Icon(Icons.flag_outlined, size: 14, color: Color(0xFF5C6B9C)),
            text: 'País: ',
            valor: widget.meals.pais,
          )
        ]
      );
  }

  buildInfos({required Icon icon, required String text, required String valor}) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
        decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(24),
            border: Border.all(
              color: Color(0xFF5C6B9C),
              width: 1,
            )
        ),
        child: Row(
              children: [
                icon,
                SizedBox(width: 6),
                Text(
                  text,
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 12,
                      color: Color(0xFF5C6B9C),
                      fontWeight: FontWeight.w600
                    ),
                ),
                SizedBox(height: 6),
                Text(
                  valor,
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 12,
                    color: Color(0xFF5C6B9C),
                  ),
                )
              ],
            ),
        ),
    );
  }

  textbox(String text) {
    return Text(
      text,
      style: textStyle(14),
      textAlign: TextAlign.justify,
    );
  }
  
  ingredienteBox(String nomeIngrediente, String medida) {
    final String imageUrl = mealsapi.imagemIngrediente(nomeIngrediente);

    return Container(
      padding: EdgeInsets.all(6),
      height: 80,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border(
          bottom: BorderSide(
            color: Color(0xFFC1C5E6),
            width: 1,
          ),
        ),
        ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 14.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFFC1C5E6),
                    blurRadius: 2,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Image.network(
                imageUrl,
                width: 60,
                height: 60,
                fit: BoxFit.cover,

              ),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  nomeIngrediente,
                  style: TextStyle(
                    letterSpacing: 1,
                    fontFamily: 'Montserrat',
                    fontSize: 14,
                    color: Color(0xFF252B9E),
                    fontWeight: FontWeight.w600
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  medida,
                  style: TextStyle(
                    letterSpacing: 1,
                    fontFamily: 'Montserrat',
                    fontSize: 12,
                    color: Color(0xFF3F499C),
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
        color: Color(0xFF3F499C),
      letterSpacing: 1.5
    );
  }

  buildAppBar() {
    return AppBar(
      toolbarHeight: 30,
      backgroundColor: Color(0xFF1800ad),
      flexibleSpace: SvgPicture.asset('fontes/appbararrow.svg', fit: BoxFit.cover),
      leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios, color: Colors.transparent, size: 50)
      ),
    );
  }

}