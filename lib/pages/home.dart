import 'package:flutter/material.dart';
import 'package:projeto/db/PostReceitaDAO.dart';
import 'package:projeto/domain/post_receita.dart';
import 'package:projeto/widget/container_posts.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  // Lista de Propriedades inicia vazia
  List<PostReceita> listaPosts = [];

  @override
  void initState() {
    super.initState();
    // É necessário pois o initState não permite parar a tela (uso do await)
    loadData();
  }

  // Carregar os dados do Banco de Dados
  loadData() async {
    listaPosts = await PostReceitaDao().listarPostReceitas();
    await Future.delayed(Duration(seconds: 2));
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.local_restaurant, size: 28, color: Colors.white),
        backgroundColor: Color(0xFF002566),
        titleSpacing: 2,
        title: Text('Dendê',
            style: TextStyle(
                fontFamily: 'Allison', color: Colors.white, fontSize: 40)),
      ),
      body: ListView.builder(
          itemCount: listaPosts.length,
          itemBuilder: (context, i){
            return ContainerPosts(postReceita: listaPosts[i]);
          })
    );
  }
}