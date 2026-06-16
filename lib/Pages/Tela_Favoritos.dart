import 'package:flutter/material.dart';
import 'package:projeto/db/db_helper.dart';
import 'package:projeto/widget/container_favoritos.dart';

class TelaFavoritos extends StatefulWidget {
  const TelaFavoritos({super.key});

  @override
  State<TelaFavoritos> createState() => _TelaFavoritosState();
}

class _TelaFavoritosState extends State<TelaFavoritos> {

  int selectedIndex = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xFF1800ad),
          leading: Icon(Icons.favorite, color: Colors.white, size: 30,),
          title: Text('Receitas Favoritas', style: TextStyle(
            color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold,
            fontFamily: 'Allison'),)
      ),

      body: ListView.builder(
        itemCount: ListaFavoritos.length,
        itemBuilder: (context, i){
          return ContainerFavoritos(receitafavorita: db_helper.ListaFavoritos[i]);
        },
      ),
        bottomNavigationBar: buildBottomNavBar(),
    );
  }

  Widget buildBottomNavBar() {
    return BottomNavigationBar(
      backgroundColor: Color(0xFF1800ad),
      currentIndex: selectedIndex,
      selectedItemColor: Colors.white,
      unselectedItemColor: Color(0xFF8693de),
      showUnselectedLabels: true,
      type: BottomNavigationBarType.fixed,
      onTap: (index) {
        setState(() {
          selectedIndex = index;
        });
      },
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.house), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Buscar'),
        BottomNavigationBarItem(icon: Icon(Icons.restaurant), label: 'Explorar'),
        BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favoritos'),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Ajustes'),
      ],
    );
  }
}
