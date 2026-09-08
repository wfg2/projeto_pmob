import 'package:flutter/material.dart';
import 'package:projeto/databases/receitasCategoriaDAO.dart';
import 'package:projeto/domain/categoria.dart';
import 'package:projeto/widget/container_receitas_categorias.dart';
import 'package:projeto/domain/receitasCategorias.dart';

class ReceitasCategoria extends StatefulWidget {
  Categoria categoria;

  ReceitasCategoria({super.key, required this.categoria});

  @override
  State<ReceitasCategoria> createState() => _ReceitasCategoriaState();
}

class _ReceitasCategoriaState extends State<ReceitasCategoria> {

  late Future<List<Receitascategorias>> futureListaReceitasCategoria;

  @override
  void initState() {
    super.initState();
    futureListaReceitasCategoria = Receitascategoriadao().listarReceitascategorias((widget.categoria.id ?? null) as int);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF002566),
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back, color: Colors.white)
          ),
          title: Text(
            widget.categoria.categoria,
            style: TextStyle(
                color: Colors.white,
                fontFamily: 'Allison',
                fontSize: 50,
                fontWeight: FontWeight.bold
            ),
          ),
        ),
        body: FutureBuilder(
          future: futureListaReceitasCategoria,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List<Receitascategorias> listaReceitasCategoria = snapshot.requireData;
              return buildListView(listaReceitasCategoria);
            }

            return Center(child: CircularProgressIndicator());
          }
        )
    );
  }

  buildListView(listaReceitasCategorias) {
    return ListView.builder (
      itemCount: listaReceitasCategorias.length,
      itemBuilder: (context, i) {
        return ContainerReceitasCategorias(receitasCategorias: listaReceitasCategorias[i]);
      }
    );
  }
}
