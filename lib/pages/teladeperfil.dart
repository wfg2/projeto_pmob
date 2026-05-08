import 'package:flutter/material.dart';
import 'package:projeto/pages/novareceita.dart';




class TelaPerfil extends StatefulWidget {
  const TelaPerfil({Key? key}) : super(key: key);




  @override
  State<TelaPerfil> createState() => _TelaPerfilState();
}




class _TelaPerfilState extends State<TelaPerfil> {
  final List<Map<String, dynamic>> receitas = [
    {
      "nome": "Acarajé",
      "imagem":
      "https://www.receiteria.com.br/wp-content/uploads/acaraje-capa.png",
      "tempo": "40 min",
      "categoria": "Nordestina",
      "favorito": false,
    },
    {
      "nome": "Tapioca",
      "imagem":
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQVvNmfeftNURRHCIdF7-l0fc1nRIYxAFh2nw&s",
      "tempo": "10 min",
      "categoria": "Nordestina",
      "favorito": false,
    },
    {
      "nome": "Cuscuz",
      "imagem":
      "https://listadereceitas.com/wp-content/uploads/2025/04/Receita-de-cuscuz-nordestino-simples-de-fazer-500x500.jpg",
      "tempo": "20 min",
      "categoria": "Nordestina",
      "favorito": false,
    },
    {
      "nome": "Feijoada",
      "imagem":
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjRYmBoJQ3N90R6HuoSxGXrXMtvNBFZe-shA&s",
      "tempo": "1h",
      "categoria": "Nordestina",
      "favorito": false,
    },
  ];




  int selectedIndex = 0;




  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [
      Center(
          child: Text('Home',
              style: TextStyle(fontSize: 32, color: Color(0xff100ea6)))),
      Center(
          child: Text('Buscar',
              style: TextStyle(fontSize: 32, color: Color(0xff100ea6)))),
      Center(
          child: Text('Explorar',
              style: TextStyle(fontSize: 32, color: Color(0xff100ea6)))),
      Center(
          child: Text('Favoritos',
              style: TextStyle(fontSize: 32, color: Color(0xff100ea6)))),
      buildTelaPerfil(),
    ];




    return Scaffold(
      appBar: buildAppBar(),
      body: pages[selectedIndex],
      bottomNavigationBar: buildBottomNavBar(),
    );
  }




  Widget infoPerfil(
      String numero,
      String texto,
      ) {
    return Column(
      children: [
        Text(
          numero,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Color(0xff100ea6),
          ),
        ),
        Text(
          texto,
          style: TextStyle(
            color: Color(0xff100ea6),
          ),
        ),
      ],
    );
  }




  Widget buildTelaPerfil() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(16),
            child: Row(children: [
              CircleAvatar(
                radius: 45,
                backgroundColor: Colors.blue,
                child: CircleAvatar(
                  radius: 42,
                  backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUc9Q9l6oB_B5YAST0rpkH1T3ndI3yq49saQ&s"),
                ),
              ),
              SizedBox(width: 20),
              Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      infoPerfil(
                        "4",
                        "Receitas",
                      ),
                      infoPerfil("16,7M", "Seguidores"),
                      infoPerfil("180", "Seguindo"),
                    ],
                  ))
            ]),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16, right: 16),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Ivete Sangalo",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff100ea6),
                    ),
                  ),
                  Text(
                    "Apaixonada pela culinária nordestina ❤️🌵",
                    style: TextStyle(
                      color: Color(0xff100ea6),
                    ),
                  ),
                  Text(
                    "Brasil 🏡",
                    style: TextStyle(
                      color: Color(0xff100ea6),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 15),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff100ea6),
                      foregroundColor: Colors.white,
                    ),
                    onPressed: () {},
                    child: Text(
                        "Editar perfil"),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff100ea6),
                      foregroundColor: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NovaReceita(),
                        ),
                      );
                    },
                    child: Text(
                        "Nova receita"),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                Icons.grid_on,
                color: Color(0xff100ea6),
              ),
              Icon(
                Icons.favorite_border,
                color: Color(0xff100ea6),
              ),
              Icon(
                Icons.person_outline,
                color: Color(0xff100ea6),
              ),
            ],
          ),
          Divider(),
          ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: receitas.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(12),
                        ),
                        child: Image.network(
                          receitas[index]["imagem"]!,
                          width: double.infinity,
                          height: 220,
                          fit: BoxFit.cover,
                          loadingBuilder: (context, child, loadingProgress) {
                            if (loadingProgress == null) {
                              return child;
                            }




                            return Container(
                              height: 220,
                              alignment: Alignment.center,
                              child: CircularProgressIndicator(),
                            );
                          },
                          errorBuilder: (context, error, stackTrace) {
                            return Container(
                              height: 200,
                              color: Colors.grey[300],
                              alignment: Alignment.center,
                              child: Icon(
                                Icons.broken_image,
                                size: 50,
                                color: Colors.grey,
                              ),
                            );
                          },
                        ),
                      ),








                      Padding(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    receitas[index]["nome"]!,
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff100ea6),
                                    ),
                                  ),
                                  IconButton(
                                    icon: Icon(
                                      receitas[index]["favorito"]
                                          ? Icons.favorite
                                          : Icons.favorite_border,
                                      color: receitas[index]["favorito"]
                                          ? Colors.red
                                          : Colors.grey,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        receitas[index]["favorito"] =
                                        !receitas[index]["favorito"];
                                      });
                                    },
                                  ),
                                ],
                              ),


                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.timer, size: 16, color: Color(0xff100ea6)),
                                      SizedBox(width: 5),
                                      Text(
                                        receitas[index]["tempo"],
                                        style: TextStyle(color: Color(0xff100ea6)),
                                      ),
                                    ],
                                  ),




                                  SizedBox(height: 5),




                                  Row(
                                    children: [
                                      Icon(Icons.restaurant, size: 16, color: Color(0xff100ea6)),
                                      SizedBox(height: 5),
                                      Text(
                                        receitas[index]["categoria"],
                                        style: TextStyle(color: Color(0xff100ea6)),
                                      )
                                    ],
                                  )
                                ],
                              ),


                              SizedBox(height: 5),
                              Text(
                                "Postado por Wade S. Gomez",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff100ea6),
                                ),
                              )
                            ],
                          ))
                    ],
                  ),
                );
              })
        ],
      ),
    );
  }




  buildBottomNavBar() {
    return BottomNavigationBar(
      backgroundColor: Color(0xff100ea6),
      currentIndex: selectedIndex,
      selectedItemColor: Colors.white,
      unselectedItemColor: Color(0xFF757575),
      showUnselectedLabels: true,
      type: BottomNavigationBarType.fixed,
      onTap: (index) {
        setState(() {
          selectedIndex = index;
        });
      },
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.house), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Buscar'),
        BottomNavigationBarItem(
            icon: Icon(Icons.restaurant), label: 'Explorar'),
        BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favoritos'),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Ajustes'),
      ],
    );
  }




  PreferredSizeWidget buildAppBar() {
    if (selectedIndex == 0) {
      return AppBar(
        centerTitle: false,
        title: Text(
          'Home',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Color(0xff100ea6),
      );
    }




    if (selectedIndex == 1) {
      return AppBar(
        centerTitle: false,
        title: Text(
          'Buscar',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Color(0xff100ea6),
      );
    }




    if (selectedIndex == 2) {
      return AppBar(
        centerTitle: false,
        title: Text(
          'Explorar',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Color(0xff100ea6),
      );
    }




    if (selectedIndex == 3) {
      return AppBar(
        centerTitle: false,
        title: Text(
          'Favoritos',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Color(0xff100ea6),
      );
    }




    return AppBar(
      centerTitle: false,
      title: Text(
        'Tela de perfil do usuário',
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
      ),
      backgroundColor: Color(0xff100ea6),
    );
  }
}
