import 'package:flutter/material.dart';

class PaginaExplorar extends StatefulWidget {
  const PaginaExplorar({Key? key}) : super(key: key);

  @override
  State<PaginaExplorar> createState() => _PaginaExploraState();
}

class _PaginaExploraState extends State<PaginaExplorar>{
  int selectedIndex = 0;
  List pages = [
    Center(
      child: Text(
        'home',
        style: TextStyle(fontSize: 32),
      ),
    ),
    PaginaExplorar(),
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
        backgroundColor: Color(0xFFfffef5),
        appBar: AppBar(
          backgroundColor: Color(0xFF1800ad),


        ),
      );
  }

  buildBottomNavBar() {
    return BottomNavigationBar(
      backgroundColor: Color(0xFF1800ad),
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


