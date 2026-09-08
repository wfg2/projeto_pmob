import 'package:flutter/material.dart';
import 'package:projeto/databases/categoriaDao.dart';
import 'package:projeto/domain/categoria.dart';
import 'package:projeto/widget/container_categoria.dart';
import 'package:projeto/api/categorias_api.dart';

class TelaCategoria extends StatefulWidget {

  const TelaCategoria({super.key});

  @override
  State<TelaCategoria> createState() => _TelaCategoriaState();
}

class _TelaCategoriaState extends State<TelaCategoria> {

  late Future<List<Categoria>> futureListaCategorias;

  @override
  void initState() {
    super.initState();
    futureListaCategorias = CategoriasApi().listarCategorias();
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

      body: FutureBuilder (
        future: futureListaCategorias,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<Categoria> listarCategorias = snapshot.requireData;
            return buildListView(listarCategorias);
          }

          return Center(child: CircularProgressIndicator());
        }
      )
    );
  }

  buildListView(listarCategorias) {
    return ListView.builder(
      itemCount: listarCategorias.length,
      itemBuilder: (context, i) {
        return ContainerCategoria(categoria: listarCategorias[i]);
      },
    );
  }
}