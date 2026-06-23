import 'package:flutter/material.dart';
import 'package:projeto/pages/teladeperfil.dart';
import 'package:projeto/domain/PropriedadesReceitas.dart';

class ReceitasProp extends StatefulWidget {
  PropriedadeReceitas propReceitas;

  ReceitasProp({super.key, required this.propReceitas});

  @override
  State<ReceitasProp> createState() => _ReceitasPropState();
}

class _ReceitasPropState extends State<ReceitasProp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(12),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
                color: Colors.black12, blurRadius: 5, offset: Offset(0, 3))
          ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(12),
            ),
            child: Image.network(
              widget.propReceitas.imagem,
              width: double.infinity,
              height: 220,
              fit: BoxFit.cover,
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) {
                  return child;
                }
                return Container(
                  height: 220,
                  alignment: Alignment.center,
                  child: CircularProgressIndicator(),
                );
              },
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  height: 200,
                  color: Colors.grey[300],
                  alignment: Alignment.center,
                  child: Icon(
                    Icons.broken_image,
                    size: 50,
                    color: Colors.grey,
                  ),
                );
              },
            ),
          ),

          Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.propReceitas.nome,
                        style: TextStyle(fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff100ea6)),
                      ),
                      Icon(Icons.favorite_border, color: Color(0xff100ea6)),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.timer, size: 16, color: Color(0xff100ea6)),
                          SizedBox(width: 5),
                          Text(
                            widget.propReceitas.tempo,
                            style: TextStyle(color: Color(0xff100ea6)),
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Icon(Icons.restaurant, size: 16,
                              color: Color(0xff100ea6)),
                          SizedBox(width: 5),
                          Text(
                            widget.propReceitas.categoria,
                            style: TextStyle(color: Color(0xff100ea6)),
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 5),
                  Text("Postado por Wade S. Gomez",
                      style: TextStyle(
                          fontWeight: FontWeight.w500, color: Color(0xff100ea6))
                  )
                ],
              )
          )
        ],
      ),
    );
  }
}