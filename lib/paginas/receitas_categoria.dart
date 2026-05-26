import 'package:flutter/material.dart';
import 'package:projeto/domain/categoria.dart';

class ReceitasCategoria extends StatefulWidget {
  Categoria categoria;

  ReceitasCategoria({super.key, required this.categoria});

  @override
  State<ReceitasCategoria> createState() => _ReceitasCategoriaState();
}

class _ReceitasCategoriaState extends State<ReceitasCategoria> {
  Categoria get categoria => widget.categoria;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF002566),
        leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back, color: Colors.white)
        )
      ),
      body: ListView(
        children: [

        ],
      )
    );
  }
}
