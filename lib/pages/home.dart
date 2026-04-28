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
            fotodeperfil:
            'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
            nomeusuario: 'Maria',
            dataehora: '21 de Abr, 15:42',
            fotopost:
            'https://receitatodahora.com.br/wp-content/uploads/2025/01/lasanha-de-frango-cremosa-0701-1024x683.jpg.webp',
            legenda:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
            likes: '198',
            comentarios: '34',
            compartilhamentos: '25', nomereceita: 'Lasanha de Frango',
            temporeceita: 45,
            nivelreceita: 'Fácil',
            fotoreceita: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSoYCWmSCVZZpjPxyhqaUHmdfB-rJYfMAbyUuUbh-UKmQ&s&ec=121657058'
        ),
        buildContainer(
            fotodeperfil:
            'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
            nomeusuario: 'Maria',
            dataehora: '21 de Abr, 15:42',
            fotopost:
            'https://receitatodahora.com.br/wp-content/uploads/2025/01/lasanha-de-frango-cremosa-0701-1024x683.jpg.webp',
            legenda:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
            likes: '198',
            comentarios: '34',
            compartilhamentos: '25', nomereceita: 'Lasanha de Frango',
            temporeceita: 45,
            nivelreceita: 'Fácil',
            fotoreceita: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSoYCWmSCVZZpjPxyhqaUHmdfB-rJYfMAbyUuUbh-UKmQ&s&ec=121657058'
        ),
        buildContainer(
            fotodeperfil:
            'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
            nomeusuario: 'Maria',
            dataehora: '21 de Abr, 15:42',
            fotopost:
            'https://receitatodahora.com.br/wp-content/uploads/2025/01/lasanha-de-frango-cremosa-0701-1024x683.jpg.webp',
            legenda:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
            likes: '198',
            comentarios: '34',
            compartilhamentos: '25', nomereceita: 'Lasanha de Frango',
            temporeceita: 45,
            nivelreceita: 'Fácil',
            fotoreceita: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSoYCWmSCVZZpjPxyhqaUHmdfB-rJYfMAbyUuUbh-UKmQ&s&ec=121657058'
        ),
        buildContainer(
            fotodeperfil:
            'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
            nomeusuario: 'Maria',
            dataehora: '21 de Abr, 15:42',
            fotopost:
            'https://receitatodahora.com.br/wp-content/uploads/2025/01/lasanha-de-frango-cremosa-0701-1024x683.jpg.webp',
            legenda:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
            likes: '198',
            comentarios: '34',
            compartilhamentos: '25', nomereceita: 'Lasanha de Frango',
            temporeceita: 45,
            nivelreceita: 'Fácil',
            fotoreceita: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSoYCWmSCVZZpjPxyhqaUHmdfB-rJYfMAbyUuUbh-UKmQ&s&ec=121657058'
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
        required nivelreceita,
        required String fotoreceita
      }) {
    return Container(
      margin: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              buildcircleAvatar(fotodeperfil),
              SizedBox(width: 12),
              Text(nomeusuario,
                  style: const TextStyle(
                      fontSize: 16,
                      fontFamily: 'Montserrat',
                      color: Color(0xFF002566))),
              Spacer(flex: 2),
              Text(dataehora,
                  style: const TextStyle(
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
              style: const TextStyle(
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
    required nivelreceita,
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
            Column(
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
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
            SizedBox(width: 80,),
            Text('Ver Receita',
                style: TextStyle(
                    color: Color(0xFF002566),
                    fontFamily: 'Montserrat-Regular',
                    fontSize: 12))
          ]),
    ),);
  }
}