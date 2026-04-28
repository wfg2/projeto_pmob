import 'package:flutter/material.dart';

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
          backgroundColor: Color(0xFF0927eb),
          leading: Icon(Icons.favorite, color: Colors.white, size: 30,),
          title: Text('Receitas Favoritas', style: TextStyle(
            color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold,),)
      ),
      body: ListView(
        children: [
          SizedBox(height: 20),
          Padding(padding: EdgeInsetsGeometry.all(15),
            child: TextField(
              style: TextStyle(color: Colors.white),
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                  hintText: 'Buscar receita',
                  hintStyle: TextStyle(color: Colors.white),
                  // Ícone
                  prefixIcon: Icon(Icons.search, color: Colors.white,),
                  // fundo branco da barra de pesquisa
                  filled: true,
                  fillColor: Color(0xFF0927eb),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none,
                  ))),),
          buildContainer(foto_Receita: 'https://static.itdg.com.br/images/640-400/d290bc79bcad112ee9095604e45eb262/365326-original.jpg',
              Nome_Receita: 'Bolo de Cenoura'),
          buildContainer(foto_Receita: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUcFNnYYBV0cbkYZJXTt5xj3TXMfZ0dGhJhg&s',
              Nome_Receita: 'Lasanha Bolonhesa'),
          buildContainer(foto_Receita: 'https://static.itdg.com.br/images/640-400/707f63812d06b57480d0177887226947/318825-original.jpg',
              Nome_Receita: 'Pudim'),
          buildContainer(foto_Receita: 'https://receitatodahora.com.br/wp-content/uploads/2021/09/yakisoba-scaled.jpg',
              Nome_Receita: 'Yakisoba'),
          buildContainer(foto_Receita: 'https://www.guiadasemana.com.br/contentFiles/image/opt_w1280h960/2019/08/FEA/64193_shutterstock-1021082725.jpg',
              Nome_Receita: 'Pastel de Nata'),
        ],
      ),
        bottomNavigationBar: buildBottomNavBar(),
    );
  }

  buildContainer({
    required String foto_Receita,
    required String Nome_Receita,
  }){
    return Container(
      margin: EdgeInsets.all(16),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(foto_Receita, height: 200, fit: BoxFit.cover)),
          Text(Nome_Receita, style: TextStyle(color: Color(0xFF1800ad), fontSize: 25, fontWeight: FontWeight.bold)),
          Row(
            children: [
              Icon(Icons.star, size: 20,color: Color(0xFF1800ad)),
              Icon(Icons.star, size: 20,color: Color(0xFF1800ad)),
              Icon(Icons.star, size: 20,color: Color(0xFF1800ad)),
              Icon(Icons.star, size: 20,color: Color(0xFF1800ad)),
              Icon(Icons.star, size: 20,color: Color(0xFF1800ad))
            ],
          )
          
        ],
      ),
    );
  }
  Widget buildBottomNavBar() {
    return BottomNavigationBar(
      backgroundColor: Color(0xff100ea6),
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
        BottomNavigationBarItem(icon: Icon(Icons.house), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Buscar'),
        BottomNavigationBarItem(icon: Icon(Icons.restaurant), label: 'Explorar'),
        BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favoritos'),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Ajustes'),
      ],
    );
  }
}
