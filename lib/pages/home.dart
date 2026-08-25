import 'package:flutter/material.dart';
import 'package:projeto/db/PostReceitaDAO.dart';
import 'package:projeto/domain/post_receita.dart';
import 'package:projeto/pages/login_page.dart';
import 'package:projeto/widget/container_posts.dart';
import 'package:projeto/db/shared_prefs.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  SharedPrefs prefs =  SharedPrefs();
  List<PostReceita> listaPosts = [];

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    listaPosts = await PostReceitaDao().listarPostReceitas();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: buildActions(),
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

  buildActions() {
    return [
      IconButton(
        onPressed: () {
          prefs.setUserStatus(false);

          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) {
                return LoginPage();
              },
            ),
          );
        },
        icon: Icon(Icons.logout, color: Colors.white,),
      ),
    ];
  }
}