import 'package:flutter/material.dart';

// cor padrão: 0xFF002566
// cor fundo: 0xFFc5cae9

class TelaCategoria extends StatefulWidget {
  const TelaCategoria({super.key});

  @override
  State<TelaCategoria> createState() => _TelaCategoriaState();
}

class _TelaCategoriaState extends State<TelaCategoria> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                  'Últimas pesquisas',
                  style: TextStyle(
                      color: Color(0xFF002566),
                      fontFamily: 'Oswald',
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,

                  )
              ),
            ),

            Wrap(
              spacing: 12.0,
              runSpacing: 10.0,
              children: [
                buildPesquisas(
                    url: 'https://guiadacozinha.com.br/wp-content/uploads/2019/10/lagarto-molho-madeira-350x230.jpg',
                    nome: 'Bife ao molho'
                ),

                buildPesquisas(
                    url: 'https://www.receitasnestle.com.br/sites/default/files/styles/recipe_detail_desktop_new/public/srh_recipes/8d3ddae24b173287367033382aa0c199.jpeg?itok=bw0TV2ct',
                    nome: 'Torta de maçã'
                ),

                buildPesquisas(
                    url: 'https://i.pinimg.com/236x/ee/2b/0e/ee2b0eec706748a01e560836f9c67a03.jpg',
                    nome: 'Salada de frutas'
                ),

                buildPesquisas(
                    url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYQGPor3nNFwrYa7HouPXQR--H54szFtt_yw&s',
                    nome: 'Mousse de limão'
                ),

                buildPesquisas(
                    url: 'https://djapa.com.br/wp-content/uploads/2024/09/vesoes-do-sushi.jpg',
                    nome: 'Sushi'
                ),

                buildPesquisas(
                    url: 'https://receitas123.com/wp-content/uploads/2023/06/peito-de-frango-grelhado.png',
                    nome: 'Peito de frango'
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Divider(
                height: 5.0,
                thickness: 3.0,
                indent: 2.0,
                endIndent: 2.0,
                color: Color(0xFF002566),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                  'Categorias',
                  style: TextStyle(
                      color: Color(0xFF002566),
                      fontFamily: 'Oswald',
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                  )
              ),
            ),

            SizedBox(
              height: 200.0,
              width: 150.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  buildCategoria(
                      url: 'https://conteudo.imguol.com.br/c/entretenimento/ad/2020/08/04/molhos-e-massas-diferentes-podem-dar-mais-variedade-ao-seu-cardapio-1596561195532_v2_4x3.jpg',
                      categoria: 'Massas'
                  ),

                  buildCategoria(
                      url: 'https://supermercadosrondon.com.br/guiadecarnes/images/postagens/as_7_melhores_carnes_para_churrasco_21-05-2019.jpg',
                      categoria: 'Carnes'
                  ),

                  buildCategoria(
                      url: 'https://guiadacozinha.com.br/wp-content/uploads/2020/01/shutterstock_661447876.jpg',
                      categoria: 'Aves'
                  ),

                  buildCategoria(
                      url: 'https://espetinhodesucesso.com/wp-content/uploads/2022/03/Como-fazer-peixe-frito-inteiro.jpg',
                      categoria: 'Peixes'
                  ),

                  buildCategoria(
                      url: 'https://images.elle.com.br/2022/12/avec_salada-grega.jpg',
                      categoria: 'Saladas'
                  ),

                  buildCategoria(
                      url: 'https://s2-receitas.glbimg.com/n7d-Ule7CHsHSBvQyF9KhMEmkU8=/0x0:1280x800/984x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_1f540e0b94d8437dbbc39d567a1dee68/internal_photos/bs/2022/J/H/uBe51BRMiAgskpDJXKcg/pave-de-chocolate.jpg',
                      categoria: 'Sobremesas'
                  ),

                  buildCategoria(
                      url: 'https://www.estadao.com.br/resizer/v2/QQESWMTIVFBLHOEENMQ5ZSYS5E.jpg?quality=80&auth=f3637ccd94435f99ac1aa126367c0ba9167e49b28340c8c4d2d209dbf9dce3ba&width=720&height=410&smart=true',
                      categoria: 'Tortas'
                  )
                ]
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildCategoria({
    required String url,
    required String categoria,
  }){
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.all(10.0),

      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          border: Border.all(
              color: Color(0xFF002566),
              width: 4.0
          )
      ),

      child:
      Stack(
        alignment: Alignment.center,
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(10.0),
            child:
            Image.network(
              url,
              height: 200,
              width: 350,
              fit: BoxFit.cover,
            ),
          ),

          Positioned.fill(
              child: Center(
                child: Text(
                  categoria,

                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 35.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat',

                      shadows: [
                        Shadow(
                            blurRadius: 5,
                            color: Colors.black,
                            offset: Offset(3, 3)
                        )
                      ]
                  ),

                  textAlign: TextAlign.center,
                ),
              )
          )
        ],
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
        width: 175,
        height: 90,

        decoration: BoxDecoration(
          color: Color(0xFF0b2f70),
          borderRadius: BorderRadius.circular(14),
          border: Border.all(
              color: Color(0xFF0b2f70),
              width: 3.0
          ),
        ),

        child: Row(
          children: [
            Container(
              width: 90,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(url),
                    fit: BoxFit.cover
                 ),
                 borderRadius: BorderRadius.circular(12.0),
              )
            ),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                      nome,
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                      )
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}