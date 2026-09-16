import 'package:flutter/material.dart';
import 'package:projeto/paginas/pagina_explorar.dart';
import 'package:projeto/paginas/pagina_categoria.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  List pages = [
    Center(
        child: Text(
          'Home',
          style: TextStyle(
              fontSize: 32
          ),
        )
    ),
    TelaCategoria(),
    TelaExplorar(),
    Center(
        child: Text(
          'Favoritos',
          style: TextStyle(
              fontSize: 32
          ),
        )
    ),
    Center(
      child: Text(
        'Perfil',
        style: TextStyle(
          fontSize: 32
        ),
      ),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: pages[selectedIndex],
      bottomNavigationBar: buildBottomNavBar(),

    );
  }

  Widget buildBottomNavBar(){
    return BottomNavigationBar(
      backgroundColor: Color(0xFF1800ad),
      currentIndex: selectedIndex,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white,
      showUnselectedLabels: true,
      type: BottomNavigationBarType.fixed,
      onTap: (index) {
        setState(() {
          selectedIndex = index;
        });
      },
      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
            activeIcon: Icon(Icons.home)),
        BottomNavigationBarItem(
            icon: Icon(Icons.fastfood_outlined),
            label: 'Categorias',
            activeIcon: Icon(Icons.fastfood)),
        BottomNavigationBarItem(
            icon: Icon(Icons.restaurant_outlined),
            label: 'Explorar',
            activeIcon: Icon(Icons.restaurant)
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline),
            label: 'Favoritos',
            activeIcon: Icon(Icons.favorite)),
        BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Perfil',
            activeIcon: Icon(Icons.person)),
      ],
    );
  }
}