import 'package:flutter/material.dart';
import 'package:projeto/databases/categoriaDao.dart';
import 'package:projeto/domain/categoria.dart';
import 'package:projeto/widget/container_categoria.dart';

class TelaCategoria extends StatefulWidget {

  const TelaCategoria({super.key});

  @override
  State<TelaCategoria> createState() => _TelaCategoriaState();
}

class _TelaCategoriaState extends State<TelaCategoria> {

  List<Categoria> listaCategorias = [];

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    listaCategorias = await CategoriaDao().listarCategorias();
    await Future.delayed(Duration(seconds: 0));
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Color(0xFF002566),
          leading: Icon(Icons.fastfood, color: Colors.white, size: 30,),
          title: Text(
            'Categorias',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Allison',
              fontSize: 50,
              fontWeight: FontWeight.bold
            ),
          )
      ),

      body: ListView.builder(
        itemCount: listaCategorias.length,
        itemBuilder: (context, i) {
          return ContainerCategoria(categoria: listaCategorias[i]);
        },
      )
    );
  }
}