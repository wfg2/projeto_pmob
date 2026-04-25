import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
          titleSpacing: 16.0,
          backgroundColor: Color(0xFF1800ad),
          elevation: 0,
          title: buildLogoApp(),
        ),

        body: ListView(
              children: [
                sectionTitle('Receitas do Dia:'),
                SizedBox(
                  height: 200.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    children: [
                      buildReceitasContainer(
                          url: 'https://cdn.deliway.com.br/blog/base/0bb/f72/a58/fast-food-hamburguer.jpg',
                          nome: 'Hamburguer'
                      ),

                      buildReceitasContainer(
                          url: 'https://cdn.deliway.com.br/blog/base/0bb/f72/a58/fast-food-hamburguer.jpg',
                          nome: 'Hamburguer'
                      ),

                      buildReceitasContainer(
                          url: 'https://cdn.deliway.com.br/blog/base/0bb/f72/a58/fast-food-hamburguer.jpg',
                          nome: 'Hamburguer'
                      ),

                      buildReceitasContainer(
                          url: 'https://cdn.deliway.com.br/blog/base/0bb/f72/a58/fast-food-hamburguer.jpg',
                          nome: 'Hamburguer'
                      ),

                      buildReceitasContainer(
                          url: 'https://cdn.deliway.com.br/blog/base/0bb/f72/a58/fast-food-hamburguer.jpg',
                          nome: 'Hamburguer'
                      ),
                    ],
                  ),
                ),

                sectionTitle('Receitas do Dia:'),
                SizedBox(
                  height: 200.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    children: [
                      buildReceitasContainer(
                          url: 'https://cdn.deliway.com.br/blog/base/0bb/f72/a58/fast-food-hamburguer.jpg',
                          nome: 'Hamburguer'
                      ),

                      buildReceitasContainer(
                          url: 'https://cdn.deliway.com.br/blog/base/0bb/f72/a58/fast-food-hamburguer.jpg',
                          nome: 'Hamburguer'
                      ),

                      buildReceitasContainer(
                          url: 'https://cdn.deliway.com.br/blog/base/0bb/f72/a58/fast-food-hamburguer.jpg',
                          nome: 'Hamburguer'
                      ),

                      buildReceitasContainer(
                          url: 'https://cdn.deliway.com.br/blog/base/0bb/f72/a58/fast-food-hamburguer.jpg',
                          nome: 'Hamburguer'
                      ),

                      buildReceitasContainer(
                          url: 'https://cdn.deliway.com.br/blog/base/0bb/f72/a58/fast-food-hamburguer.jpg',
                          nome: 'Hamburguer'
                      ),
                    ],
                  ),
                ),

                sectionTitle('Receitas do Dia:'),
                SizedBox(
                  height: 200.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    children: [
                      buildReceitasContainer(
                          url: 'https://cdn.deliway.com.br/blog/base/0bb/f72/a58/fast-food-hamburguer.jpg',
                          nome: 'Hamburguer'
                      ),

                      buildReceitasContainer(
                          url: 'https://cdn.deliway.com.br/blog/base/0bb/f72/a58/fast-food-hamburguer.jpg',
                          nome: 'Hamburguer'
                      ),

                      buildReceitasContainer(
                          url: 'https://cdn.deliway.com.br/blog/base/0bb/f72/a58/fast-food-hamburguer.jpg',
                          nome: 'Hamburguer'
                      ),

                      buildReceitasContainer(
                          url: 'https://cdn.deliway.com.br/blog/base/0bb/f72/a58/fast-food-hamburguer.jpg',
                          nome: 'Hamburguer'
                      ),

                      buildReceitasContainer(
                          url: 'https://cdn.deliway.com.br/blog/base/0bb/f72/a58/fast-food-hamburguer.jpg',
                          nome: 'Hamburguer'
                      ),
                    ],
                  ),
                ),

              ],
            ),
        bottomNavigationBar: buildBottomNavBar(),
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

Widget buildLogoApp() {
  return Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      Image.asset(
        'images/logo.png',
        height: 50,
        fit: BoxFit.contain,
      ),

      const SizedBox(width: 18.0),

      Text(
        'Dendê',
        style: TextStyle(
          fontSize: 50.0,
          fontWeight: FontWeight.bold,
          fontFamily: 'bellaboo',
          color: Colors.white,
        ),
      ),
    ],
  );
}

Widget sectionTitle(String titulo) {
  return Padding(
    padding: EdgeInsets.all(10.0),
    child: Text(
      titulo,
      style: GoogleFonts.anton(
        textStyle: TextStyle(
          fontSize: 28.0,
          fontWeight: FontWeight.bold,
          color: Color(0xFF1800ad),
        ),
      ),
    ),
  );
}

Widget buildReceitasContainer({
  required String url,
  required String nome,
}) {
  return Container(
    width: 150.0,
    margin: EdgeInsets.only(
      right: 15.0 // espaço entre os pratos
    ),

    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 150.0,
          height: 150.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24.0),
              border: Border.all(
                color: Color(0xFF1800ad),
                width: 3.0,
              )
            ),

        child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.network(
                url,
                height: 150.0,
                width: 150.0,
                fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 8.0),
        Text(
          nome,
          style: GoogleFonts.anton(
              textStyle: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1800ad),
              ),
          ),
        ),
      ],
    ),
  );
}
