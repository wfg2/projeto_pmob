import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TelaPesquisa extends StatefulWidget {
  const TelaPesquisa({super.key});

  @override
  State<TelaPesquisa> createState() => _TelaPesquisaState();
}

class _TelaPesquisaState extends State<TelaPesquisa> {
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
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color(0xff0fffef5),
      appBar: AppBar(
        // Cor da barra do aplicativo
        backgroundColor: Color(0xFF1800ad),
        leading: Icon(
            Icons.search,
            color: Colors.white,
          size: 40,
        ),
        titleSpacing: 6,
        title: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
          child: TextField(
            textAlignVertical: TextAlignVertical.center,
            decoration: InputDecoration(
              hintText:
                'O que você está procurando?',
              filled: true,
              fillColor: Colors.white,
              contentPadding: const EdgeInsets.symmetric(
                vertical: 0,
                horizontal: 10,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: BorderSide.none,
              )
            ),
          ),
        ),
      ),

      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              "Categorias",
              style: GoogleFonts.anton(
                textStyle: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1800ad),
                )
            ),
            ),
          ),

          buildCategoriaContainer(
            urlImage: 'https://www.ogastronomo.com.br/upload/690979078-massas-frescas-saiba-mais-sobre-esse-tipo-de-massa.jpg',
            nomeCategoria: 'MASSAS',
          ),

          buildCategoriaContainer(
            urlImage: 'https://marettimo.com.br/blog/wp-content/uploads/2023/10/ainda-vida-com-frutos-do-mar-nao-cozidos-1-4.jpg',
            nomeCategoria: 'FRUTOS DO MAR',
          ),

          buildCategoriaContainer(
            urlImage: 'https://supermercadosrondon.com.br/guiadecarnes/images/postagens/as_7_melhores_carnes_para_churrasco_21-05-2019.jpg',
            nomeCategoria: 'CARNES',
          ),

          buildCategoriaContainer(
            urlImage: 'https://teamodoce.com.br/wp-content/uploads/2025/04/sobremesa-para-o-dia-das-maes.webp',
            nomeCategoria: 'SOBREMESAS',
          ),

          buildCategoriaContainer(
            urlImage: 'https://guiadacozinha.com.br/wp-content/uploads/2018/10/saladadekaniepepino.webp',
            nomeCategoria: 'SALADAS',
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

Widget buildCategoriaContainer({
  //conteudo das categorias
  required String urlImage,
  required String nomeCategoria,
}){
  return Container(
    height: 150, // Altura para manter o padrão da imagem
    margin: EdgeInsets.all(10),
    decoration: BoxDecoration(
      border: Border.all(
        color: const Color(0xFF1800ad),
        width: 3.0,
      ),
      borderRadius: BorderRadius.circular(16)
    ),
    child: ClipRRect( // Recortar borda
      borderRadius: BorderRadius.circular(12), // Definir tamanho da borda
      child: Stack( // coloca elementos um cime do outro
        children: [
          // Imagem de Fundo
          Positioned.fill(
            child: Image.network(
              urlImage,
              fit: BoxFit.cover,
            ),
          ),
          // Overlay escuro para contraste do texto na image,
          // O texto no centro da imagem
    // 2. O texto com borda centralizado
    Center(
      child: Stack(
          children: [
          // TEXTO DE BAIXO: A Borda (Contorno escuro)
          Text(
          nomeCategoria.toUpperCase(),
          style: GoogleFonts.anton(
            textStyle: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            foreground: Paint()
            ..style = PaintingStyle.stroke
            ..strokeWidth = 4.0 // Grossura da borda
            ..color = Colors.black,
            ),  // Cor da borda
          ),
        ),
        // TEXTO DE CIMA: O Preenchimento (Branco)
        Text(
        nomeCategoria.toUpperCase(),
        style: GoogleFonts.anton(
          textStyle: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          )
              )),
          ],
      ),
    ),
        ],
      )
    )
  );
}