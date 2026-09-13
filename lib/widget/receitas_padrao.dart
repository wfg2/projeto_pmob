
import 'package:flutter/material.dart';

class ReceitasPadrao extends StatefulWidget {
  const ReceitasPadrao({super.key});

  @override
  State<ReceitasPadrao> createState() => _ReceitasPadraoState();
}

class _ReceitasPadraoState extends State<ReceitasPadrao> {
  @override
  Widget build(BuildContext context) {
    return ListView(
        children: [
          buildSecoes(secao: 'Receitas do dia:'),
          SizedBox(
            height: 250.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              children: [

                buildReceitas(
                    url: 'https://conteudo.imguol.com.br/c/entretenimento/ad/2020/08/04/molhos-e-massas-diferentes-podem-dar-mais-variedade-ao-seu-cardapio-1596561195532_v2_4x3.jpg',
                    nome: 'Macarrão'
                ),

                buildReceitas(
                    url: 'https://static.itdg.com.br/images/640-400/a9785927200dab579e1144c4afa6f6c8/lasanha.png',
                    nome: 'Lasanha'
                ),

                buildReceitas(
                    url: 'https://static.itdg.com.br/images/640-400/7e781068a839f15cdf1c85f18b3ea9d6/332854-original-1-1-.jpg',
                    nome: 'Strogonoff'
                ),

                buildReceitas(
                    url: 'https://minhasreceitinhas.com.br/wp-content/uploads/2016/12/Escondidinho_de_carne_moi%CC%81da.jpg',
                    nome: 'Escondinho'
                ),

                buildReceitas(
                    url: 'https://cdn0.tudoreceitas.com/pt/posts/2/1/0/torta_salgada_no_liquidificador_12_orig.jpg',
                    nome: 'Torta salgada'
                ),

                buildReceitas(
                    url: 'https://i0.wp.com/espetinhodesucesso.com/wp-content/uploads/2025/04/Como-fazer-frango-assado-no-forno.jpg?resize=800%2C450&ssl=1',
                    nome: 'Frango assado'
                ),
              ],
            ),
          ),

          buildSecoes(secao: 'Top Receitas:'),
          SizedBox(
            height: 250.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              children: [

                buildReceitas(
                    url: 'https://truffle-assets.tastemadecontent.net/cdn-cgi/image/width=360/dbd3b840-acaraje_s_thumb.jpg',
                    nome: 'Acarajé'
                ),

                buildReceitas(
                    url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTf9J3g1eFCDtT1cXJvVew5-LkqCVAgfdoBJQ&s',
                    nome: 'Panqueca'
                ),

                buildReceitas(
                    url: 'https://imagem.band.com.br/71/f_322571.jpg',
                    nome: 'Kebab'
                ),

                buildReceitas(
                    url: 'https://www.thecookingtwins.com/wp-content/uploads/2025/07/tteokbokki-recipe-featured.webp',
                    nome: 'Tteokbokki'
                ),

                buildReceitas(
                    url: 'https://assets.tmecosys.com/image/upload/t_web_rdp_recipe_584x480/img/recipe/ras/Assets/CC75BE80-28D4-4D7F-B340-D30641B8992A/Derivates/c3d72b21-6eb8-4696-92d0-3f8527a92f39.jpg',
                    nome: 'Schnecken'
                ),

                buildReceitas(
                    url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQV6LNvoA-Ym0v61XI_lQsJ4jInQg7cQ7wGqg&s',
                    nome: 'Korvapuusti'
                ),
              ],
            ),
          ),

          buildSecoes(secao: 'Mais pesquisados:'),
          SizedBox(
            height: 250.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              children: [

                buildReceitas(
                    url: 'https://www.receiteria.com.br/wp-content/uploads/hamburguer-na-air-fryer-0.jpg',
                    nome: 'Hambúrguer'
                ),

                buildReceitas(
                    url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDJKJPlaalwOKPpT-IChF_JIU4S8ZMGOiyGQ&s',
                    nome: 'Pizza'
                ),

                buildReceitas(
                    url: 'https://assets.tmecosys.com/image/upload/t_web_rdp_recipe_584x480/img/recipe/ras/Assets/64EF898D-2EDD-4B47-A456-E6A7D137AC91/Derivates/00f76cac-64f6-4573-be4f-e604a7d99143.jpg',
                    nome: 'Sushi'
                ),

                buildReceitas(
                    url: 'https://www.sabornamesa.com.br/media/k2/items/cache/c1034feeb8e544b33d1fc604d40ae043_XL.jpg',
                    nome: 'Temaki'
                ),

                buildReceitas(
                    url: 'https://receitatodahora.com.br/wp-content/uploads/2022/05/brownie-1024x768.jpg',
                    nome: 'Brownie'
                ),

                buildReceitas(
                    url: 'https://piracanjuba-institucional-prd.s3.sa-east-1.amazonaws.com/recipe_images/image/piracanjuba--wrap-big-mac-1108-x830-564.webp',
                    nome: 'Wrap'
                ),
              ],
            ),
          ),

          buildSecoes(secao: 'Típicas brasileiras:'),
          SizedBox(
            height: 250.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              children: [

                buildReceitas(
                    url: 'https://i.panelinha.com.br/i1/bk-9097-39-panelinha-12-02-200635.webp',
                    nome: 'Feijoada'
                ),

                buildReceitas(
                    url: 'https://static.itdg.com.br/images/640-400/1ae0fdb277d066045833d9f418dc236c/94841-original.jpg',
                    nome: 'Moqueca'
                ),

                buildReceitas(
                    url: 'https://imac.agr.br/wp-content/uploads/2022/11/IMAC-NOV-Carne-para-churrasco-como-temperar-e-realcar-o-sabor-Autores-GS2-Marketing-Digital-Freepik.jpg',
                    nome: 'Churrasco'
                ),

                buildReceitas(
                    url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTCAHSg91w18SODgKVv1nRXu2Slu3BxahFqxQ&s',
                    nome: 'Galinhada'
                ),

                buildReceitas(
                    url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSmKoFPqhiB2M8C88D-axUd3szC2Ik_6i0V4w&s',
                    nome: 'Tacacá'
                ),

                buildReceitas(
                    url: 'https://p2.trrsf.com/image/fget/cf/1200/900/middle/images.terra.com/2023/05/22/pamonha-r1ak8eh2lcfr.jpg',
                    nome: 'Pamonha'
                ),
              ],
            ),
          ),
        ]
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

  Widget buildReceitas({
    required String url,
    required String nome
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 8.0),
      child: Container(
          width: 250.0,
          height: 200,

          decoration: BoxDecoration(
            color: Color(0xFFF8F9FA),
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 8,
                offset: Offset(0, 0),
              ),
            ],
          ),

          child: Container(
            width: 200.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20.0)
              ),
            ),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(14),
                      topLeft: Radius.circular(14)
                  ),
                  child: Image.network(
                    url,
                    height: 150,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),


                Padding(
                  padding: EdgeInsets.all(12),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Text(
                            nome,
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 18.0,
                                color: Color(0xFF002566),
                                fontWeight: FontWeight.bold
                            )
                        ),
                      ),
                      Icon(
                        size: 20,
                        Icons.favorite_border,
                        color: Color(0xFF002566),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
      ),
    );
  }
}