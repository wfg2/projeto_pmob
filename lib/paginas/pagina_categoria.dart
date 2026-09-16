import 'package:flutter/material.dart';
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
      appBar: buildAppBar(),

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

  buildAppBar() {
    return AppBar(
        backgroundColor: Color(0xFF1800ad),
        leading: Icon(Icons.fastfood, color: Colors.white, size: 30,),
        title: Text(
          'Categorias',
          style: TextStyle(
              color: Colors.white,
              fontFamily: 'Allison',
              fontSize: 40,
              fontWeight: FontWeight.bold
          ),
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
