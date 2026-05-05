import 'package:flutter/material.dart';
import 'package:projeto/pages/detalhes_receita.dart';
import 'package:projeto/pages/home_screen.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.local_restaurant, size: 28, color: Colors.white),
        backgroundColor: Color(0xFF002566),
        titleSpacing: 2,
        title: Text('Dendê',
            style: TextStyle(
                fontFamily: 'Allison', color: Colors.white, fontSize: 40)),
      ),
      body: ListView(children: [
        buildContainer(
            fotodeperfil: 'https://concertsinbrazil.com/wp-content/uploads/2024/05/image-13.png',
            nomeusuario: 'Sofya Plotnikova',
            dataehora: '22 de Mai, 09:00',
            fotopost: 'https://upload.wikimedia.org/wikipedia/commons/d/df/Pelmeni_Russian.jpg',
            legenda: 'Pelmeni feito com amor para aquecer o coração. 🇷🇺',
            likes: '3.1k', comentarios: '95', compartilhamentos: '44',
            nomereceita: 'Pelmeni', temporeceita: 70, nivelreceita: 'Difícil',
            fotoreceita: 'https://s2-receitas.glbimg.com/ZCYRb-UBLbCuCImCXlBG_Uvu_bA=/0x0:1920x1080/640x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_1f540e0b94d8437dbbc39d567a1dee68/internal_photos/bs/2025/R/v/Pdk98iRcqk1ndCsA0KBQ/harumaki-em-casa-receitas-faceis-para-voce-fazer-seu-rolinho-primavera.jpg'
        ),
        buildContainer(
            fotodeperfil: 'https://upload.wikimedia.org/wikipedia/commons/b/b0/Ariel_Tsang_20221210.jpg',
            nomeusuario: 'Ariel Tsang',
            dataehora: '23 de Mai, 08:30',
            fotopost: 'https://moinhoglobo.com.br/wp-content/uploads/2021/09/rolinho-primavera.jpg',
            legenda: 'Rolinhos Primavera crocantes. 🇭🇰',
            likes: '2.5k', comentarios: '67', compartilhamentos: '30',
            nomereceita: 'Rolinho Primavera', temporeceita: 45, nivelreceita: 'Médio',
            fotoreceita: 'https://images.unsplash.com/photo-1623341214825-9f4f963727da?w=300'
        ),
        buildContainer(
            fotodeperfil: 'https://portalpopline.com.br/wp-content/uploads/2025/05/now-united-jayna.jpg',
            nomeusuario: 'Jayna Hughes',
            dataehora: '23 de Mai, 12:45',
            fotopost: 'https://deliciouslyrushed.com/wp-content/uploads/2023/11/chicken-adobo-feature-image.jpg',
            legenda: 'Filipino Chicken Adobo. Melhor prato do mundo! 🇵🇭',
            likes: '6.7k', comentarios: '320', compartilhamentos: '140',
            nomereceita: 'Adobo', temporeceita: 55, nivelreceita: 'Médio',
            fotoreceita: 'https://deliciouslyrushed.com/wp-content/uploads/2023/11/chicken-adobo-feature-image.jpg'
        ),
        buildContainer(
            fotodeperfil: 'https://cadernopop.com.br/wp-content/uploads/2024/12/heyoon-1024x576.webp',
            nomeusuario: 'Heyoon Jeong',
            dataehora: '24 de Mai, 10:15',
            fotopost: 'https://www.sabornamesa.com.br/media/k2/items/cache/b96b0675996074d026b87e19f230d72d_XL.jpg',
            legenda: 'Apimentado e delicioso: Tteokbokki! 🇰🇷',
            likes: '8.1k', comentarios: '450', compartilhamentos: '300',
            nomereceita: 'Tteokbokki', temporeceita: 30, nivelreceita: 'Médio',
            fotoreceita: 'https://www.sabornamesa.com.br/media/k2/items/cache/b96b0675996074d026b87e19f230d72d_XL.jpg'
        ),
        buildContainer(
            fotodeperfil: 'https://pt.quizur.com/_image?href=https%3A%2F%2Fimg.quizur.com%2Ff%2Fimg5f12e302b93a64.04628293.jpg%3FlastEdited%3D1595073305&w=600&h=600&f=webp',
            nomeusuario: 'Joalin Loukamaa',
            dataehora: '24 de Mai, 16:00',
            fotopost: 'https://www.valio.fi/cdn-cgi/image/format=auto/https://cdn-wp.valio.fi/valio-fi/2023/04/37674-korvapuustit-1300x867.jpeg',
            legenda: 'Korvapuusti! Os melhores pãezinhos de canela. 🇫🇮',
            likes: '5.9k', comentarios: '200', compartilhamentos: '100',
            nomereceita: 'Korvapuusti', temporeceita: 90, nivelreceita: 'Médio',
            fotoreceita: 'https://www.valio.fi/cdn-cgi/image/format=auto/https://cdn-wp.valio.fi/valio-fi/2023/04/37674-korvapuustit-1300x867.jpeg'
        ),
      ]),
    );
  }

  buildContainer(
      { // perfil
        required String fotodeperfil,
        required String nomeusuario,
        required String dataehora,
        // post
        required String fotopost,
        required String legenda,
        required String likes,
        required String comentarios,
        required String compartilhamentos,
        // receita
        required String nomereceita,
        required int temporeceita,
        required String nivelreceita,
        required String fotoreceita
      }) {
    return Container(

      margin: EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              buildcircleAvatar(fotodeperfil),
              SizedBox(width: 12),
              Text(nomeusuario,
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Montserrat',
                    color: Color(0xFF002566))),
              Spacer(flex: 2),
              Text(dataehora,
                  style: TextStyle(
                      fontSize: 12, fontFamily: 'Montserrat-Regular'))
            ],
          ),
          SizedBox(height: 10),
          ClipRRect(
            child: Image.network(fotopost, height: 200, fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(10),
          ),
          SizedBox(height: 8),
          Row(
            children: [
              Column(
                children: [
                  Icon(Icons.favorite, size: 25, color: Color(0xFF002566)),
                  Text(likes,
                      style: TextStyle(
                          color: Color(0xFF002566),
                          fontFamily: 'Montserrat-Regular',
                          fontSize: 10))
                ],
              ),
              SizedBox(width: 10),
              Column(
                children: [
                  Icon(Icons.comment_rounded,
                      size: 25, color: Color(0xFF002566)),
                  Text(comentarios,
                      style: TextStyle(
                          color: Color(0xFF002566),
                          fontFamily: 'Montserrat-Regular',
                          fontSize: 10))
                ],
              ),
              SizedBox(width: 10),
              Column(
                children: [
                  Icon(Icons.share, size: 25, color: Color(0xFF002566)),
                  Text(compartilhamentos,
                      style: TextStyle(
                          color: Color(0xFF002566),
                          fontFamily: 'Montserrat-Regular',
                          fontSize: 10))
                ],
              ),
            ],
          ),
          SizedBox(height: 10),
          Text(legenda,
              style: TextStyle(
                  fontSize: 14, fontFamily: 'Montserrat-Regular')),
          SizedBox(height: 12),
          buildContainerRecipe(nomereceita: nomereceita, temporeceita: temporeceita, nivelreceita: nivelreceita, fotoreceita: fotoreceita)
        ],
      ),
    );
  }

  buildcircleAvatar(String profilephoto) {
    return CircleAvatar(
      radius: 23,
      backgroundColor: Color(0xFF002566),
      child: CircleAvatar(
        radius: 21,
        backgroundImage: NetworkImage(profilephoto),
      ),
    );
  }

  buildContainerRecipe ({
    required String nomereceita,
    required int temporeceita,
    required String nivelreceita,
    required String fotoreceita}){
    return GestureDetector(
      onTap: (){
        setState(() {
          Navigator.push(context, MaterialPageRoute(builder: (context) => detalhes()));
        });
      },
      child: Container(
      height: 75,
      decoration: BoxDecoration(
          color: Color(0xFFc5cae9),
          borderRadius: BorderRadius.circular(12)),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(12),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                    fotoreceita,
                    height: 57,
                    width: 57,
                    fit: BoxFit.cover),
              ),
            ),
            Expanded(child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  nomereceita,
                  style: TextStyle(
                      color: Color(0xFF002566),
                      fontFamily: 'Montserrat',
                      fontSize: 12),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.timer,
                      color: Color(0xFF002566),
                      size: 18,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      '${temporeceita} min',
                      style: TextStyle(
                          color: Color(0xFF002566),
                          fontFamily: 'Montserrat-Regular',
                          fontSize: 10),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Icon(
                      Icons.graphic_eq,
                      color: Color(0xFF002566),
                      size: 18,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      nivelreceita,
                      style: TextStyle(
                          color: Color(0xFF002566),
                          fontFamily: 'Montserrat-Regular',
                          fontSize: 10),
                    )
                  ],
                )
              ],
            ),
            ),
            Padding(padding: EdgeInsets.all(15),
              child: Text('Ver Receita',
                  style: TextStyle(
                    color: Color(0xFF002566),
                    fontFamily: 'Montserrat-Regular',
                    fontSize: 12,
                    fontWeight: FontWeight.bold
                  )),
            )
          ]),
    ),);
  }
}