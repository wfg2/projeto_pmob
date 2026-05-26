import 'package:flutter/material.dart';
import 'package:projeto/pages/detalhes_receita.dart';
import 'package:projeto/pages/home_screen.dart';
import 'package:projeto/db/fake_database.dart';
import 'package:projeto/widget/container_posts.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
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
          itemCount: FakeDatabase.listaPosts.length,
          itemBuilder: (context, i){
            return ContainerPosts(postReceita: FakeDatabase.listaPosts[i]);
          })
    );
  }
}