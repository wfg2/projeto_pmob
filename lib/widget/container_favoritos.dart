import 'package:flutter/material.dart';
import 'package:projeto/domain/receitaFavorita.dart';

class ContainerFavoritos extends StatefulWidget {
  ReceitaFavorita receitafavorita;
  ContainerFavoritos({super.key, required this.receitafavorita});

  @override
  State<ContainerFavoritos> createState() => _ContainerFavoritosState();
}

class _ContainerFavoritosState extends State<ContainerFavoritos> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(widget.receitafavorita.foto_Receita, height: 200, fit: BoxFit.cover)),
          Text(widget.receitafavorita.nome_Receita, style: TextStyle(color: Color(0xFF1800ad), fontSize: 25, fontWeight: FontWeight.bold)),
          Row(
            children: [
              Icon(Icons.star, size: 20,color: Color(0xFF1800ad)),
              Icon(Icons.star, size: 20,color: Color(0xFF1800ad)),
              Icon(Icons.star, size: 20,color: Color(0xFF1800ad)),
              Icon(Icons.star, size: 20,color: Color(0xFF1800ad)),
              Icon(Icons.star, size: 20,color: Color(0xFF1800ad))
            ],
          )
        ],
      ),
    );
  }
}
