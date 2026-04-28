import 'package:flutter/material.dart';

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
            profilephoto:
            'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
            username: 'Maria',
            date_time: '21 de Abr, 15:42',
            photos:
            'https://receitatodahora.com.br/wp-content/uploads/2025/01/lasanha-de-frango-cremosa-0701-1024x683.jpg.webp',
            caption:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
            likes: '198',
            comments: '34',
            shares: '25'),
        buildContainer(
            profilephoto:
            'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?q=80&w=880&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
            username: 'João',
            date_time: '21 de Abr, 11:30',
            photos:
            'https://receitatodahora.com.br/wp-content/uploads/2025/01/lasanha-de-frango-cremosa-0701-1024x683.jpg.webp',
            caption:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
            likes: '135',
            comments: '20',
            shares: '12'),
        buildContainer(
            profilephoto:
            'https://static1.purebreak.com.br/articles/9/94/48/9/@/367444-any-gabrielly-e-uma-das-estrelas-do-now-580x0-2.jpg',
            username: 'Any',
            date_time: '21 de Abr, 9:22',
            photos:
            'https://receitatodahora.com.br/wp-content/uploads/2025/01/lasanha-de-frango-cremosa-0701-1024x683.jpg.webp',
            caption:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
            likes: '198',
            comments: '34',
            shares: '25'),
        buildContainer(
            profilephoto:
            'https://static1.purebreak.com.br/articles/9/94/48/9/@/367444-any-gabrielly-e-uma-das-estrelas-do-now-580x0-2.jpg',
            username: 'Any',
            date_time: '21 de Abr, 15:42',
            photos:
            'https://receitatodahora.com.br/wp-content/uploads/2025/01/lasanha-de-frango-cremosa-0701-1024x683.jpg.webp',
            caption:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
            likes: '198',
            comments: '34',
            shares: '25')
      ]),
    );
  }

  buildContainer(
      {required String profilephoto,
        required String username,
        required String date_time,
        required String photos,
        required String caption,
        required String likes,
        required String comments,
        required String shares
      }) {
    return Container(
      margin: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              buidcircleAvatar(profilephoto),
              SizedBox(width: 12),
              Text(username,
                  style: const TextStyle(
                      fontSize: 16,
                      fontFamily: 'Montserrat',
                      color: Color(0xFF002566))),
              SizedBox(width: 170),
              Text(date_time,
                  style: const TextStyle(
                      fontSize: 12, fontFamily: 'Montserrat-Regular'))
            ],
          ),
          SizedBox(height: 10),
          ClipRRect(
            child: Image.network(photos, height: 200, fit: BoxFit.cover),
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
                  Text(comments,
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
                  Text(shares,
                      style: TextStyle(
                          color: Color(0xFF002566),
                          fontFamily: 'Montserrat-Regular',
                          fontSize: 10))
                ],
              ),
            ],
          ),
          SizedBox(height: 10),
          Text(caption,
              style: const TextStyle(
                  fontSize: 14, fontFamily: 'Montserrat-Regular')),
          SizedBox(height: 12),
          Container(
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
                          'https://bunny-wp-pullzone-q9rgroatx7.b-cdn.net/wp-content/uploads/2022/01/Receita-de-lasanha-de-carne-480x270.jpg',
                          height: 57,
                          width: 57,
                          fit: BoxFit.cover),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Lasanha de Frango',
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
                            '45 min',
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
                            'Fácil',
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
          )
        ],
      ),
    );
  }

  buidcircleAvatar(String profilephoto) {
    return CircleAvatar(
      radius: 23,
      backgroundColor: Color(0xFF002566),
      child: CircleAvatar(
        radius: 21,
        backgroundImage: NetworkImage(profilephoto),
      ),
    );
  }
}