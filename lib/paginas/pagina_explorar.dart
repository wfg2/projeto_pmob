import 'package:flutter/material.dart';

// cor padrão: 0xFF002566
// cor fundo: 0xFFc5cae9

class TelaExplorar extends StatefulWidget {
  const TelaExplorar({super.key});

  @override
  State<TelaExplorar> createState() => _TelaExplorarState();
}

class _TelaExplorarState extends State<TelaExplorar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //backgroundColor: Color(0xFFc5cae9),
        appBar: AppBar(
            backgroundColor: Color(0xFF002566),

            leading: Icon(
                Icons.restaurant,
                color: Colors.white,
                size: 40.0
            ),

            title: Text(
              'Explorar',
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Allison',
                  fontSize: 50.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 3.0
              ),
            )
        ),

        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
              children: [
                buildSecoes(secao: 'Receitas do dia:'),
                SizedBox(
                  height: 200.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    children: [

                      buildReceitas(
                          url: 'https://conteudo.imguol.com.br/c/entretenimento/ad/2020/08/04/molhos-e-massas-diferentes-podem-dar-mais-variedade-ao-seu-cardapio-1596561195532_v2_4x3.jpg',
                          nome: 'Macarrão'
                      ),

                      buildReceitas(
                          url: 'https://conteudo.imguol.com.br/c/entretenimento/ad/2020/08/04/molhos-e-massas-diferentes-podem-dar-mais-variedade-ao-seu-cardapio-1596561195532_v2_4x3.jpg',
                          nome: 'Lasanha'
                      ),

                      buildReceitas(
                          url: 'https://conteudo.imguol.com.br/c/entretenimento/ad/2020/08/04/molhos-e-massas-diferentes-podem-dar-mais-variedade-ao-seu-cardapio-1596561195532_v2_4x3.jpg',
                          nome: 'Strogonoff'
                      ),

                      buildReceitas(
                          url: 'https://conteudo.imguol.com.br/c/entretenimento/ad/2020/08/04/molhos-e-massas-diferentes-podem-dar-mais-variedade-ao-seu-cardapio-1596561195532_v2_4x3.jpg',
                          nome: 'Escondinho'
                      ),

                      buildReceitas(
                          url: 'https://conteudo.imguol.com.br/c/entretenimento/ad/2020/08/04/molhos-e-massas-diferentes-podem-dar-mais-variedade-ao-seu-cardapio-1596561195532_v2_4x3.jpg',
                          nome: 'Torta salgada'
                      ),

                      buildReceitas(
                          url: 'https://conteudo.imguol.com.br/c/entretenimento/ad/2020/08/04/molhos-e-massas-diferentes-podem-dar-mais-variedade-ao-seu-cardapio-1596561195532_v2_4x3.jpg',
                          nome: 'Frango assado'
                      ),
                    ],
                  ),
                ),
                buildLinha(),
                buildSecoes(secao: 'Mais favoritados:'),
                SizedBox(
                  height: 200.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    children: [

                      buildReceitas(
                          url: 'https://conteudo.imguol.com.br/c/entretenimento/ad/2020/08/04/molhos-e-massas-diferentes-podem-dar-mais-variedade-ao-seu-cardapio-1596561195532_v2_4x3.jpg',
                          nome: 'Macarrão'
                      ),

                      buildReceitas(
                          url: 'https://conteudo.imguol.com.br/c/entretenimento/ad/2020/08/04/molhos-e-massas-diferentes-podem-dar-mais-variedade-ao-seu-cardapio-1596561195532_v2_4x3.jpg',
                          nome: 'Macarrão'
                      ),

                      buildReceitas(
                          url: 'https://conteudo.imguol.com.br/c/entretenimento/ad/2020/08/04/molhos-e-massas-diferentes-podem-dar-mais-variedade-ao-seu-cardapio-1596561195532_v2_4x3.jpg',
                          nome: 'Macarrão'
                      ),

                      buildReceitas(
                          url: 'https://conteudo.imguol.com.br/c/entretenimento/ad/2020/08/04/molhos-e-massas-diferentes-podem-dar-mais-variedade-ao-seu-cardapio-1596561195532_v2_4x3.jpg',
                          nome: 'Macarrão'
                      ),

                      buildReceitas(
                          url: 'https://conteudo.imguol.com.br/c/entretenimento/ad/2020/08/04/molhos-e-massas-diferentes-podem-dar-mais-variedade-ao-seu-cardapio-1596561195532_v2_4x3.jpg',
                          nome: 'Macarrão'
                      ),

                      buildReceitas(
                          url: 'https://conteudo.imguol.com.br/c/entretenimento/ad/2020/08/04/molhos-e-massas-diferentes-podem-dar-mais-variedade-ao-seu-cardapio-1596561195532_v2_4x3.jpg',
                          nome: 'Macarrão'
                      ),
                    ],
                  ),
                ),
                buildLinha(),
                buildSecoes(secao: 'Mais pesquisados:'),
                SizedBox(
                  height: 200.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    children: [

                      buildReceitas(
                          url: 'https://conteudo.imguol.com.br/c/entretenimento/ad/2020/08/04/molhos-e-massas-diferentes-podem-dar-mais-variedade-ao-seu-cardapio-1596561195532_v2_4x3.jpg',
                          nome: 'Macarrão'
                      ),

                      buildReceitas(
                          url: 'https://conteudo.imguol.com.br/c/entretenimento/ad/2020/08/04/molhos-e-massas-diferentes-podem-dar-mais-variedade-ao-seu-cardapio-1596561195532_v2_4x3.jpg',
                          nome: 'Macarrão'
                      ),

                      buildReceitas(
                          url: 'https://conteudo.imguol.com.br/c/entretenimento/ad/2020/08/04/molhos-e-massas-diferentes-podem-dar-mais-variedade-ao-seu-cardapio-1596561195532_v2_4x3.jpg',
                          nome: 'Macarrão'
                      ),

                      buildReceitas(
                          url: 'https://conteudo.imguol.com.br/c/entretenimento/ad/2020/08/04/molhos-e-massas-diferentes-podem-dar-mais-variedade-ao-seu-cardapio-1596561195532_v2_4x3.jpg',
                          nome: 'Macarrão'
                      ),

                      buildReceitas(
                          url: 'https://conteudo.imguol.com.br/c/entretenimento/ad/2020/08/04/molhos-e-massas-diferentes-podem-dar-mais-variedade-ao-seu-cardapio-1596561195532_v2_4x3.jpg',
                          nome: 'Macarrão'
                      ),

                      buildReceitas(
                          url: 'https://conteudo.imguol.com.br/c/entretenimento/ad/2020/08/04/molhos-e-massas-diferentes-podem-dar-mais-variedade-ao-seu-cardapio-1596561195532_v2_4x3.jpg',
                          nome: 'Macarrão'
                      ),
                    ],
                  ),
                ),
                buildLinha(),
                buildSecoes(secao: 'Rápido de preparo:'),
                SizedBox(
                  height: 200.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    children: [

                      buildReceitas(
                          url: 'https://conteudo.imguol.com.br/c/entretenimento/ad/2020/08/04/molhos-e-massas-diferentes-podem-dar-mais-variedade-ao-seu-cardapio-1596561195532_v2_4x3.jpg',
                          nome: 'Macarrão'
                      ),

                      buildReceitas(
                          url: 'https://conteudo.imguol.com.br/c/entretenimento/ad/2020/08/04/molhos-e-massas-diferentes-podem-dar-mais-variedade-ao-seu-cardapio-1596561195532_v2_4x3.jpg',
                          nome: 'Macarrão'
                      ),

                      buildReceitas(
                          url: 'https://conteudo.imguol.com.br/c/entretenimento/ad/2020/08/04/molhos-e-massas-diferentes-podem-dar-mais-variedade-ao-seu-cardapio-1596561195532_v2_4x3.jpg',
                          nome: 'Macarrão'
                      ),

                      buildReceitas(
                          url: 'https://conteudo.imguol.com.br/c/entretenimento/ad/2020/08/04/molhos-e-massas-diferentes-podem-dar-mais-variedade-ao-seu-cardapio-1596561195532_v2_4x3.jpg',
                          nome: 'Macarrão'
                      ),

                      buildReceitas(
                          url: 'https://conteudo.imguol.com.br/c/entretenimento/ad/2020/08/04/molhos-e-massas-diferentes-podem-dar-mais-variedade-ao-seu-cardapio-1596561195532_v2_4x3.jpg',
                          nome: 'Macarrão'
                      ),

                      buildReceitas(
                          url: 'https://conteudo.imguol.com.br/c/entretenimento/ad/2020/08/04/molhos-e-massas-diferentes-podem-dar-mais-variedade-ao-seu-cardapio-1596561195532_v2_4x3.jpg',
                          nome: 'Macarrão'
                      ),
                    ],
                  ),
                ),
                buildLinha(),
                buildSecoes(secao: 'Típicas brasileiras:'),
                SizedBox(
                  height: 200.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    children: [

                      buildReceitas(
                          url: 'https://conteudo.imguol.com.br/c/entretenimento/ad/2020/08/04/molhos-e-massas-diferentes-podem-dar-mais-variedade-ao-seu-cardapio-1596561195532_v2_4x3.jpg',
                          nome: 'Macarrão'
                      ),

                      buildReceitas(
                          url: 'https://conteudo.imguol.com.br/c/entretenimento/ad/2020/08/04/molhos-e-massas-diferentes-podem-dar-mais-variedade-ao-seu-cardapio-1596561195532_v2_4x3.jpg',
                          nome: 'Macarrão'
                      ),

                      buildReceitas(
                          url: 'https://conteudo.imguol.com.br/c/entretenimento/ad/2020/08/04/molhos-e-massas-diferentes-podem-dar-mais-variedade-ao-seu-cardapio-1596561195532_v2_4x3.jpg',
                          nome: 'Macarrão'
                      ),

                      buildReceitas(
                          url: 'https://conteudo.imguol.com.br/c/entretenimento/ad/2020/08/04/molhos-e-massas-diferentes-podem-dar-mais-variedade-ao-seu-cardapio-1596561195532_v2_4x3.jpg',
                          nome: 'Macarrão'
                      ),

                      buildReceitas(
                          url: 'https://conteudo.imguol.com.br/c/entretenimento/ad/2020/08/04/molhos-e-massas-diferentes-podem-dar-mais-variedade-ao-seu-cardapio-1596561195532_v2_4x3.jpg',
                          nome: 'Macarrão'
                      ),

                      buildReceitas(
                          url: 'https://conteudo.imguol.com.br/c/entretenimento/ad/2020/08/04/molhos-e-massas-diferentes-podem-dar-mais-variedade-ao-seu-cardapio-1596561195532_v2_4x3.jpg',
                          nome: 'Macarrão'
                      ),
                    ],
                  ),
                ),
                buildLinha(),
                buildSecoes(secao: 'Receitas da vovó:'),
                SizedBox(
                  height: 200.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    children: [

                      buildReceitas(
                          url: 'https://conteudo.imguol.com.br/c/entretenimento/ad/2020/08/04/molhos-e-massas-diferentes-podem-dar-mais-variedade-ao-seu-cardapio-1596561195532_v2_4x3.jpg',
                          nome: 'Macarrão'
                      ),

                      buildReceitas(
                          url: 'https://conteudo.imguol.com.br/c/entretenimento/ad/2020/08/04/molhos-e-massas-diferentes-podem-dar-mais-variedade-ao-seu-cardapio-1596561195532_v2_4x3.jpg',
                          nome: 'Macarrão'
                      ),

                      buildReceitas(
                          url: 'https://conteudo.imguol.com.br/c/entretenimento/ad/2020/08/04/molhos-e-massas-diferentes-podem-dar-mais-variedade-ao-seu-cardapio-1596561195532_v2_4x3.jpg',
                          nome: 'Macarrão'
                      ),

                      buildReceitas(
                          url: 'https://conteudo.imguol.com.br/c/entretenimento/ad/2020/08/04/molhos-e-massas-diferentes-podem-dar-mais-variedade-ao-seu-cardapio-1596561195532_v2_4x3.jpg',
                          nome: 'Macarrão'
                      ),

                      buildReceitas(
                          url: 'https://conteudo.imguol.com.br/c/entretenimento/ad/2020/08/04/molhos-e-massas-diferentes-podem-dar-mais-variedade-ao-seu-cardapio-1596561195532_v2_4x3.jpg',
                          nome: 'Macarrão'
                      ),

                      buildReceitas(
                          url: 'https://conteudo.imguol.com.br/c/entretenimento/ad/2020/08/04/molhos-e-massas-diferentes-podem-dar-mais-variedade-ao-seu-cardapio-1596561195532_v2_4x3.jpg',
                          nome: 'Macarrão'
                      ),
                    ],
                  ),
                ),
              ]
          ),
        )
    );
  }

  Widget buildSecoes({
    required String secao
  }){
    return Padding(
      padding: EdgeInsets.all(12.0),
      child: Text(
        secao,
        style: TextStyle(
            color: Color(0xFF002566),
            fontWeight: FontWeight.bold,
            fontSize: 30.0,
            fontFamily: 'Oswald'
        ),
      ),
    );
  }

  Widget buildLinha(){
    return Divider(
      height: 5.0,
      thickness: 3.0,
      indent: 10.0,
      endIndent: 10.0,
      color: Color(0xFF002566),
    );
  }

  Widget buildReceitas({
    required String url,
    required String nome
  }){
    return Container(
        width: 150.0,
        margin: EdgeInsets.only(
            right: 15.0
        ),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 150.0,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                border: Border.all(
                    color: Color(0xFF002566),
                    width: 3.0
                ),
              ),

              child: ClipRRect(
                borderRadius: BorderRadius.circular(16.0),
                child:
                Image.network(
                  url,
                  height: 150.0,
                  fit: BoxFit.cover,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 8.0
              ),
              child: Text(
                  nome,
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 22.0,
                      color: Color(0xFF002566),
                      fontWeight: FontWeight.bold
                  )
              ),
            ),
          ],
        )
    );
  }
}
