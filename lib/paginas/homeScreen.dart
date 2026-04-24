import 'package:flutter/material.dart';
import 'package:projeto/paginas/pagina_pesquisar.dart';

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
        'home',
        style: TextStyle(fontSize: 32),
      ),
    ),
    TelaPesquisa(),
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
      appBar: AppBar(
        leading: Icon(Icons.restaurant, size: 30, color: Colors.white),
        backgroundColor: Color(0xFF0000CB),
        titleSpacing: 2,
        title: Text('TalkFood',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
      ),
      body: pages[selectedIndex],
      bottomNavigationBar: buildBottomNavBar(),
    );
  }

  buildBottomNavBar() {
    return BottomNavigationBar(
      backgroundColor: Color(0xFF0000CB),
      currentIndex: selectedIndex,
      selectedItemColor: Colors.white,
      unselectedItemColor: Color(0xFF757575),
      showUnselectedLabels: true,
      type: BottomNavigationBarType.fixed,
      onTap: (index) {
        setState(() {
          selectedIndex = index;
        });
      },
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.house), label: 'home'),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: 'buscar'),
        BottomNavigationBarItem(icon: Icon(Icons.restaurant), label: 'explorar'),
        BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'favoritos'),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'ajustes'),
      ],
    );
  }
}
