import 'package:flutter/material.dart';

// cor padrão: 0xFF002566
// cor fundo: 0xFFc5cae9

class TelaCategoria extends StatefulWidget {
  const TelaCategoria({super.key});

  @override
  State<TelaCategoria> createState() => _TelaCategoriaState();
}

class _TelaCategoriaState extends State<TelaCategoria> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFc5cae9),
      appBar: AppBar(

          backgroundColor: Color(0xFF002566),

          leading: Icon(
            Icons.fastfood,
            color: Colors.white,
            size: 40.0,
          ),

          title: Text(
            'Categorias',
            style: TextStyle(
                fontFamily: 'Allison',
                fontSize: 50.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 3.0,
                color: Colors.white
            ),
          )
      ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
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
              height: 120,
              width: 490,
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
}