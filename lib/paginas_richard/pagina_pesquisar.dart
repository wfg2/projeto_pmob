import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TelaPesquisa extends StatefulWidget {
  const TelaPesquisa({super.key});

  @override
  State<TelaPesquisa> createState() => _TelaPesquisaState();
}

class _TelaPesquisaState extends State<TelaPesquisa> {
  Widget build(BuildContext context){
    return Scaffold(
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              "Categorias",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.purple,
              )
            ),
          ),
          buildCategoriaContainer(
            urlImage: 'https://www.ogastronomo.com.br/upload/690979078-massas-frescas-saiba-mais-sobre-esse-tipo-de-massa.jpg',
            nomeCategoria: 'MASSAS',
          ),

          buildCategoriaContainer(
            urlImage: 'https://marettimo.com.br/blog/wp-content/uploads/2023/10/ainda-vida-com-frutos-do-mar-nao-cozidos-1-4.jpg',
            nomeCategoria: 'PEIXES E FRUTOS DO MAR',
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
            urlImage: 'https://www.ogastronomo.com.br/upload/690979078-massas-frescas-saiba-mais-sobre-esse-tipo-de-massa.jpg',
            nomeCategoria: '',
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
          Center(
            child: Text(
              nomeCategoria.toUpperCase(),
              style: const TextStyle (
                color: Colors.white, // cor do texto
                fontSize: 28,
                fontWeight: FontWeight.bold
              )
            ),
          )
        ],
      )
    )
  );
}


