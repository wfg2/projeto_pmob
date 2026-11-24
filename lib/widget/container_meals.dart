import 'package:flutter/material.dart';
import 'package:projeto/domain/meals.dart';
import 'package:projeto/paginas/detail_page.dart';
import 'package:projeto/provider/favorite_provider.dart';
import 'package:provider/provider.dart';

class ContainerMeals extends StatefulWidget {
  Meals meals;
  ContainerMeals({super.key, required this.meals});

  @override
  State<ContainerMeals> createState() => _ContainerMealsState();
}

class _ContainerMealsState extends State<ContainerMeals> {

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return DetailPage(meals: widget.meals);
            }
          )
        );
      },

      child: Padding(
          padding: EdgeInsetsGeometry.symmetric(horizontal: 12, vertical: 12),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color : Color(0xFFF8F9FA),
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 8,
                  offset: Offset(0, 0),
                ),
              ],
            ),
      
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(14),
                        topLeft: Radius.circular(14)
                    ),
                    child: Image.network(
                      widget.meals.urlImagem,
                      height: 200,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
      
                  Padding(
                      padding: EdgeInsets.all(12),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                              child: Text(
                                  widget.meals.nome,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 18.0,
                                      color: Color(0xFF2113FE),
                                      fontWeight: FontWeight.bold
                                  )
                              )
                          ),
      
                          SizedBox(width: 8),
      
                          Row(
                            children: [
                              Text(
                                  widget.meals.avaliacao,
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 16.0,
                                      color: Color(0xFF2113FE),
                                      fontWeight: FontWeight.bold
                                  )
                              ),
      
                              SizedBox(width: 5),
      
                              buildIconButton(context)
                            ]
                          )
                        ],
                      )
                  ),
      
                  Padding(
                    padding: EdgeInsets.only(left: 12, right: 12),
                    child: Text(
                        'Categoria: ${widget.meals.categoria}',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 16.0,
                          color: Color(0xFF252B9E),
                        )
                    ),
                  ),
      
                  Padding(
                    padding: EdgeInsets.only(left: 12, right: 12, bottom: 15),
                    child: Text(
                        'País de origem: ${widget.meals.pais}',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 16.0,
                            color: Color(0xFF252B9E),
                        )
                    ),
                  )
                ]
            ),
          )
      ),
    );
  }

  IconButton buildIconButton(BuildContext context) {
    bool isFavorite = context.watch<FavoriteProvider>().isFavorite(widget.meals);

    return IconButton(
      onPressed: () {
        context.read<FavoriteProvider>().addFavorite(widget.meals);
      },
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        size: 32,
        color: isFavorite ? Color(0xFFE41D56) : Colors.grey,
      )
    );
  }
}
