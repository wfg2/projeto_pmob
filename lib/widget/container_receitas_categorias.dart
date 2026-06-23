import 'package:flutter/material.dart';
import 'package:projeto/domain/receitasCategorias.dart';

class ContainerReceitasCategorias extends StatefulWidget {
  Receitascategorias receitasCategorias;

  ContainerReceitasCategorias({super.key, required this.receitasCategorias});

  @override
  State<ContainerReceitasCategorias> createState() => _ConatinerReceitasCategoriasState();
}

class _ConatinerReceitasCategoriasState extends State<ContainerReceitasCategorias> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
      child: Container(
          height: 230,
          width: 175.0,

          decoration: BoxDecoration(
            color: Color(0xFFF8F9FA),
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 8,
                offset: Offset(0, 0),
              ),
            ],
          ),

          child: Container(
            width: 175.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20.0)
              ),
            ),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(14),
                      topLeft: Radius.circular(14)
                  ),
                  child: Image.network(
                    widget.receitasCategorias.urlImagem,
                    height: 150,
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
                            widget.receitasCategorias.receita,
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 20.0,
                                color: Color(0xFF002566),
                                fontWeight: FontWeight.bold
                            )
                        ),
                      ),
                      Icon(
                        size: 20,
                        Icons.favorite_border,
                        color: Color(0xFF002566),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 12.0, bottom: 12.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                          'Por: ${widget.receitasCategorias.user}',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 16.0,
                            color: Color(0xFF002566),
                          )
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
      ),
    );
  }
}
