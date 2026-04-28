import 'package:flutter/material.dart';
import 'package:projeto/pages/home.dart';
import 'package:projeto/pages/detalhes_receita.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  List pages = [
    home(),
    detalhes(),
    Center(
      child: Text(
        'explorar',
        style: TextStyle(fontSize: 32),
      ),
    ),
    Center(
      child: Text(
        'favoritos',
        style: TextStyle(fontSize: 32),
      ),
    ),
    Center(
      child: Text(
        'configurações',
        style: TextStyle(fontSize: 32),
      ),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedIndex],
      bottomNavigationBar: buidBottonNavBar(),
    );
  }

  buidBottonNavBar() {
    return BottomNavigationBar(
      backgroundColor: Color(0xFF002566),
      currentIndex: selectedIndex,
      selectedItemColor: Colors.white,
      unselectedItemColor: Color(0xff8693de),
      showUnselectedLabels: true,
      type: BottomNavigationBarType.fixed,
      onTap: (index) {
        setState(() {
          selectedIndex = index;
        });
      },
      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.house_outlined),
            label: 'Home',
            activeIcon: Icon(Icons.house)),
        BottomNavigationBarItem(
            icon: Icon(Icons.search_outlined),
            label: 'Buscar',
            activeIcon: Icon(Icons.search)),
        BottomNavigationBarItem(
            icon: Icon(Icons.restaurant_menu_outlined),
            label: 'Explorar',
            activeIcon: Icon(Icons.restaurant_menu)),
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
