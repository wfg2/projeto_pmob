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
          height: 300,
          width: double.infinity,

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
                    height: 180,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),


                Padding(
                  padding: EdgeInsets.only(left: 12, top: 12, right: 12, bottom: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Text(
                            widget.receitasCategorias.receita,
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 18.0,
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
                  padding: EdgeInsets.only(left: 12.0, bottom: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.timer,
                            color: Color(0xFF002566),
                            size: 20,
                          ),
                          SizedBox(width: 5),
                          Text(
                            widget.receitasCategorias.timer,
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 14.0,
                              color: Color(0xFF002566),
                            )
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Text(
                              'Postado por: ${widget.receitasCategorias.user}',
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 14.0,
                                  color: Color(0xFF002566),
                                  fontWeight: FontWeight.bold
                              )
                          ),
                        ],
                      )
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
