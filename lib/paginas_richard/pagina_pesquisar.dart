import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TelaPesquisa extends StatefulWidget {
  const TelaPesquisa({super.key});

  @override
  State<TelaPesquisa> createState() => _TelaPesquisaState();
}

class _TelaPesquisaState extends State<TelaPesquisa> {
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        // Cor da barra do aplicativo
        backgroundColor: Color(0xFF1800ad),
        title: SizedBox(
          height: 40,
        child: TextField(
          textAlignVertical: TextAlignVertical.center,
          decoration: InputDecoration(
            hintText: 'O que você está procurando?',
              // Ícone
              prefixIcon: Icon(Icons.search),
              // fundo branco da barra de pesquisa
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide.none,
            )
          ),
        ),
      ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
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
    margin: EdgeInsets.all(16),
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


