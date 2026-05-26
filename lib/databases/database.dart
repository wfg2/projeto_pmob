import 'package:projeto/domain/categoria.dart';

class Database {
  static List listaCategorias = [
    Categoria(
        urlImagem: 'https://conteudo.imguol.com.br/c/entretenimento/ad/2020/08/04/molhos-e-massas-diferentes-podem-dar-mais-variedade-ao-seu-cardapio-1596561195532_v2_4x3.jpg',
        categoria: 'Massas'
    ),
    Categoria(
        urlImagem: 'https://supermercadosrondon.com.br/guiadecarnes/images/postagens/as_7_melhores_carnes_para_churrasco_21-05-2019.jpg',
        categoria: 'Carnes'
    ),
    Categoria(
        urlImagem: 'https://guiadacozinha.com.br/wp-content/uploads/2020/01/shutterstock_661447876.jpg',
        categoria: 'Aves'
    ),
    Categoria(
      urlImagem: 'https://espetinhodesucesso.com/wp-content/uploads/2022/03/Como-fazer-peixe-frito-inteiro.jpg',
      categoria: 'Peixes'
    ),
    Categoria(
        urlImagem: 'https://images.elle.com.br/2022/12/avec_salada-grega.jpg',
        categoria: 'Saladas'
    ),
    Categoria(
        urlImagem: 'https://s2-receitas.glbimg.com/n7d-Ule7CHsHSBvQyF9KhMEmkU8=/0x0:1280x800/984x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_1f540e0b94d8437dbbc39d567a1dee68/internal_photos/bs/2022/J/H/uBe51BRMiAgskpDJXKcg/pave-de-chocolate.jpg',
        categoria: 'Sobremesas'
    ),
    Categoria(
        urlImagem: 'https://www.estadao.com.br/resizer/v2/QQESWMTIVFBLHOEENMQ5ZSYS5E.jpg?quality=80&auth=f3637ccd94435f99ac1aa126367c0ba9167e49b28340c8c4d2d209dbf9dce3ba&width=720&height=410&smart=true',
        categoria: 'Tortas'
    )
  ];
}