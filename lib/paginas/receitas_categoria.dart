import 'package:flutter/material.dart';
import 'package:projeto/api/receitas_categoria_api.dart';
import 'package:projeto/domain/categoria.dart';
import 'package:projeto/widget/container_receitas_categorias.dart';
import 'package:projeto/domain/receitas_categorias.dart';

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
    futureListaReceitasCategoria = ReceitasCategoriaApi().listarReceitasCategoria(widget.categoria.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF1800ad),
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
                fontSize: 40,
                fontWeight: FontWeight.bold
            ),
          ),
        ),
        body: FutureBuilder(
          future: futureListaReceitasCategoria,
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return Center(child: Text('Erro: ${snapshot.error}'));
            }
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
