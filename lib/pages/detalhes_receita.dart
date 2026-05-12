import 'package:flutter/material.dart';
import 'package:projeto/pages/home.dart';
import 'package:projeto/pages/home_screen.dart';

class detalhes extends StatefulWidget {
  const detalhes({Key? key}) : super(key: key);

  @override
  State<detalhes> createState() => _detalhesState();
}

class _detalhesState extends State<detalhes> {
  int abaSelecionada = 0;
  List<String> ingredientes = [
    'Massa pronta de lasanha',
    '400 g de presunto',
    '400 g de mussarela ralada',
    '2 copos de requeijão',
    '150 g de mussarela para gratinar',
    '2 colheres (sopa) de manteiga',
    '2 colheres (sopa) de farinha de trigo',
    '400 ml de leite',
  ];
  List<String> preparo = [
    'Em uma panela, coloque a manteiga para derreter.',
    'Acrescente a farinha de trigo e misture bem com auxílio de um fouet.',
    'Adicione o leite e misture até formar um creme homogêneo.',
    'Tempere com sal, pimenta e noz-moscada a gosto.',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF002566),
          leading:
          IconButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
            },
            icon: Icon(Icons.arrow_back_ios_new,
                color: Colors.white,
                size: 22)),
          titleSpacing: 0,
          title: Text(
            'Lasanha de Frango',
            style: TextStyle(
              fontFamily: 'Oswald',
              color: Colors.white,
              fontSize: 25,
            ),
          ),
          flexibleSpace: Spacer(flex: 1),
          actions: [
            IconButton(
                onPressed: () {
                  print('fav');
                },
                icon: Icon(
                  Icons.favorite_outline,
                  color: Colors.white,
                  size: 25,
                ))
          ],
        ),
        body: ListView(
          children: [
            Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    ClipRRect(
                      child: Image.network(
                          'https://cristalalimentos.com.br/wp-content/uploads/2022/05/Lasanha-cristal-alimentos-1282x850.jpg',
                          height: 200,
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(children: [
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Color(0xFF002566),
                                size: 19,
                              ),
                              Icon(
                                Icons.star,
                                color: Color(0xFF002566),
                                size: 19,
                              ),
                              Icon(
                                Icons.star,
                                color: Color(0xFF002566),
                                size: 19,
                              ),
                              Icon(
                                Icons.star,
                                color: Color(0xFF002566),
                                size: 19,
                              ),
                              Icon(
                                Icons.star_outline,
                                color: Color(0xFF002566),
                                size: 19,
                              )
                            ],
                          ),
                          Text(
                            '4,0  (342 avaliações)',
                            style: TextStyle(
                                color: Color(0xFF002566),
                                fontFamily: 'Montserrat-Regular',
                                fontSize: 10),
                          )
                        ]),
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(5),
                              height: 30,
                              decoration: BoxDecoration(
                                  color: Color(0xFFc5cae9),
                                  borderRadius: BorderRadius.circular(12)),
                              child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(
                                      Icons.timer_outlined,
                                      color: Color(0xFF002566),
                                      size: 20,
                                    ),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Text(
                                      '45 min',
                                      style: TextStyle(
                                          color: Color(0xFF002566),
                                          fontSize: 12,
                                          fontFamily: 'Montserrat-Regular'),
                                    )
                                  ]),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Container(
                              padding: EdgeInsets.all(5),
                              height: 30,
                              decoration: BoxDecoration(
                                  color: Color(0xFFc5cae9),
                                  borderRadius: BorderRadius.circular(12)),
                              child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(
                                      Icons.graphic_eq,
                                      color: Color(0xFF002566),
                                      size: 20,
                                    ),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Text(
                                      'Fácil',
                                      style: TextStyle(
                                          color: Color(0xFF002566),
                                          fontSize: 12,
                                          fontFamily: 'Montserrat-Regular'),
                                    )
                                  ]),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  abaSelecionada = 0;
                                });
                              },
                              child: Container(
                                padding: EdgeInsets.symmetric(vertical: 12),
                                decoration: BoxDecoration(
                                    color: abaSelecionada == 0
                                        ? Color(0xFF002566)
                                        : Color(0xff8693de),
                                    borderRadius: BorderRadius.circular(30)),
                                child: Center(
                                  child: Text('INGREDIENTES',
                                      style: TextStyle(
                                          fontFamily: 'Oswald',
                                          color: abaSelecionada == 0
                                              ? Color(0xff8693de)
                                              : Color(0xFF002566))),
                                ),
                              ),
                            )),
                        SizedBox(
                          width: 15,
                        ),
                        Expanded(
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  abaSelecionada = 1;
                                });
                              },
                              child: Container(
                                padding: EdgeInsets.symmetric(vertical: 12),
                                decoration: BoxDecoration(
                                    color: abaSelecionada == 1
                                        ? Color(0xFF002566)
                                        : Color(0xff8693de),
                                    borderRadius: BorderRadius.circular(30)),
                                child: Center(
                                  child: Text('MODO DE PREPARO',
                                      style: TextStyle(
                                          fontFamily: 'Oswald',
                                          color: abaSelecionada == 0
                                              ? Color(0xFF002566)
                                              : Color(0xff8693de))),
                                ),
                              ),
                            ))
                      ],
                    ),
                    Container(
                        height: 300,
                        child: abaSelecionada == 0
                            ? buildIngredientes()
                            : buildPreparo())
                  ]),
            )
          ],
        ));
  }

  Widget buildIngredientes() {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: ingredientes.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 8),
          child: Container(
            height: 40,
            decoration: BoxDecoration(
                color: Color(0xff8693de),
                borderRadius: BorderRadius.circular(20)),
            child: Center(
              child: Text(ingredientes[index],
                  style: TextStyle(
                      fontFamily: 'Montserrat-Regular',
                      color: Color(0xFF002566))),
            ),
          ),
        );
      },
    );
  }

  Widget buildPreparo() {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: preparo.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 8),
          child: Container(
            height: 80,
            decoration: BoxDecoration(
                color: Color(0xff8693de),
                borderRadius: BorderRadius.circular(20)),
            child: Center(
              child: ListTile(
              leading: CircleAvatar(
              backgroundColor: Color(0xFF002566),
              child: Text('${index + 1}', style: TextStyle(color: Colors.white)),
              ),
              title: Text(preparo[index], style: TextStyle(color: Color(0xFF002566), fontFamily: 'Montserrat-Regular', fontSize: 14),),
              ),
          ),
        ),);
      },
    );
  }
}
