import 'package:flutter/material.dart';

class ReceitasCategorias extends StatefulWidget {
  const ReceitasCategorias({super.key});

  @override
  State<ReceitasCategorias> createState() => _ReceitasCategoriasState();
}

class _ReceitasCategoriasState extends State<ReceitasCategorias> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
           'Mais Vista',
           style: TextStyle(
             fontSize: 20,
             fontWeight: FontWeight.bold,
             fontFamily: 'Montserrat'
           ),
          )
        ],
      ),
    );
  }
}
