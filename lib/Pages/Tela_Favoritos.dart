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
          backgroundColor: Color(0xFF1800ad),
          leading: Icon(Icons.favorite, color: Colors.white, size: 30,),
          title: Text('Receitas Favoritas', style: TextStyle(
            color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold,
            fontFamily: 'Allison'),)
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
                  prefixIcon: Icon(Icons.search, color: Colors.white,),
                  filled: true,
                  fillColor: Color(0xFF1800ad),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none,
                  ))),),
          buildContainer(foto_Receita: 'https://c.ndtvimg.com/2023-03/0m65kep_samosa_625x300_10_March_23.jpg',
              Nome_Receita: 'Samosa'),
          buildContainer(foto_Receita: 'https://www.kikkoman.pt/fileadmin/_processed_/d/1/csm_1498-recipe-page-Nasi_Goreng_Desktop-Header_c44e907269.webp',
              Nome_Receita: 'Nasi Goreng'),
          buildContainer(foto_Receita: 'https://www.thespruceeats.com/thmb/TV91zQEIkPA2yCHv8b4c13t_NOo=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/nanaimo-bar-gt-18-56a8be0e3df78cf772a03c79.jpg',
              Nome_Receita: 'Nanaimo Bar'),
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
