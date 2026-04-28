import 'package:flutter/material.dart';

// cor padrão: 0xFF002566
// cor fundo: 0xFFc5cae9

class TelaBuscar extends StatefulWidget {
  const TelaBuscar({super.key});

  @override
  State<TelaBuscar> createState() => _TelaBuscarState();
}

class _TelaBuscarState extends State<TelaBuscar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFc5cae9),
      appBar: AppBar(
          backgroundColor: Color(0xFF002566),
          title: Padding(
            padding: const EdgeInsets.all(6.0),
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search, color: Color(0xFF002566)),
                  hintText: 'O que você está procurando?',
                  hintStyle: TextStyle(
                      color: Color(0xFF002566),
                      fontSize: 16.0,
                      fontFamily: 'Montserrat'
                  ),

                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(24.0),
                  )
              ),
            ),
          )
      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text(
                'Últimas pesquisas',
                style: TextStyle(
                    color: Color(0xFF002566),
                    fontFamily: 'Oswald',
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                    shadows: [
                      Shadow(
                          color: Color(0xFF747fc6),
                          offset: Offset(3, 3),
                          blurRadius: 5.0
                      )
                    ]
                )
            ),

            SizedBox(
              height: 20.0,
            ),

            Wrap(
              spacing: 15.0,
              runSpacing: 10.0,
              children: [
                buildPesquisas(
                    url: 'https://supermercadosrondon.com.br/guiadecarnes/images/postagens/as_7_melhores_carnes_para_churrasco_21-05-2019.jpg',
                    nome: 'Carne'
                ),

                buildPesquisas(
                    url: 'https://supermercadosrondon.com.br/guiadecarnes/images/postagens/as_7_melhores_carnes_para_churrasco_21-05-2019.jpg',
                    nome: 'Carne'
                ),

                buildPesquisas(
                    url: 'https://supermercadosrondon.com.br/guiadecarnes/images/postagens/as_7_melhores_carnes_para_churrasco_21-05-2019.jpg',
                    nome: 'Carne'
                ),

                buildPesquisas(
                    url: 'https://supermercadosrondon.com.br/guiadecarnes/images/postagens/as_7_melhores_carnes_para_churrasco_21-05-2019.jpg',
                    nome: 'Carne'
                ),

                buildPesquisas(
                    url: 'https://supermercadosrondon.com.br/guiadecarnes/images/postagens/as_7_melhores_carnes_para_churrasco_21-05-2019.jpg',
                    nome: 'Carne'
                ),

                buildPesquisas(
                    url: 'https://supermercadosrondon.com.br/guiadecarnes/images/postagens/as_7_melhores_carnes_para_churrasco_21-05-2019.jpg',
                    nome: 'Carne'
                ),

                buildPesquisas(
                    url: 'https://supermercadosrondon.com.br/guiadecarnes/images/postagens/as_7_melhores_carnes_para_churrasco_21-05-2019.jpg',
                    nome: 'Carne'
                ),

                buildPesquisas(
                    url: 'https://supermercadosrondon.com.br/guiadecarnes/images/postagens/as_7_melhores_carnes_para_churrasco_21-05-2019.jpg',
                    nome: 'Carne'
                ),

                buildPesquisas(
                    url: 'https://supermercadosrondon.com.br/guiadecarnes/images/postagens/as_7_melhores_carnes_para_churrasco_21-05-2019.jpg',
                    nome: 'Carne'
                ),

                buildPesquisas(
                    url: 'https://supermercadosrondon.com.br/guiadecarnes/images/postagens/as_7_melhores_carnes_para_churrasco_21-05-2019.jpg',
                    nome: 'Carne'
                ),

                buildPesquisas(
                    url: 'https://supermercadosrondon.com.br/guiadecarnes/images/postagens/as_7_melhores_carnes_para_churrasco_21-05-2019.jpg',
                    nome: 'Carne'
                ),

                buildPesquisas(
                    url: 'https://supermercadosrondon.com.br/guiadecarnes/images/postagens/as_7_melhores_carnes_para_churrasco_21-05-2019.jpg',
                    nome: 'Carne'
                ),

                buildPesquisas(
                    url: 'https://supermercadosrondon.com.br/guiadecarnes/images/postagens/as_7_melhores_carnes_para_churrasco_21-05-2019.jpg',
                    nome: 'Carne'
                ),

                buildPesquisas(
                    url: 'https://supermercadosrondon.com.br/guiadecarnes/images/postagens/as_7_melhores_carnes_para_churrasco_21-05-2019.jpg',
                    nome: 'Carne'
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget buildPesquisas({
    required String url,
    required String nome
  }){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 160,
        height: 80,

        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(14),
          border: Border.all(
              color: Color(0xFF002566),
              width: 2.0
          ),
        ),

        child: Row(
          children: [
            Container(
              width: 80,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(url),
                      fit: BoxFit.cover
                  ),
                  borderRadius: BorderRadius.circular(10)
              ),
            ),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                    nome,
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF002566),
                        shadows: [
                          Shadow(
                              color: Color(0xFF747fc6),
                              offset: Offset(2, 2),
                              blurRadius: 10.0
                          )
                        ]
                    )
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}