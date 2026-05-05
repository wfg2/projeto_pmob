import 'package:flutter/material.dart';
import 'package:projeto/paginas/pagina_explorar.dart';
import 'package:projeto/paginas/pagina_categoria.dart';

// cor: 0xFF002566

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
      backgroundColor: Color(0xFF002566),
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
          icon: Icon(
            Icons.house,
          ),
          label: 'Home',
        ),

        BottomNavigationBarItem(
            icon: Icon(
                Icons.fastfood
            ),
            label: 'Categorias'
        ),

        BottomNavigationBarItem(
            icon: Icon(
                Icons.restaurant
            ),
            label: 'Explorar'
        ),

        BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
            ),
            label: 'Favoritos'
        ),

        BottomNavigationBarItem(
          icon: Icon(
            Icons.person
          ),
          label: 'Perfil'
        )
      ],
    );
  }
}