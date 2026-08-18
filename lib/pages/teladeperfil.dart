import 'package:flutter/material.dart';
import 'package:projeto/pages/novareceita.dart';
import 'package:projeto/db/PropriedadesReceitasDAO.dart';
import 'package:projeto/widget/container_receita.dart';
import 'package:projeto/domain/PropriedadesReceitas.dart';

class TelaPerfil extends StatefulWidget {
  const TelaPerfil({super.key});

  @override
  State<TelaPerfil> createState() => _TelaPerfilState();
}
class _TelaPerfilState extends State<TelaPerfil> {
  List<PropriedadeReceitas> lista = [];
  late Future<List<PropriedadeReceitas>> futureListaPropriedades;

  int selectedIndex = 4;

  @override
  void initState() {
    super.initState();
    futureListaPropriedades = PropriedadesReceitasDAO().listarPropriedadesReceitas();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: futureListaPropriedades,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List<PropriedadeReceitas> listaPropriedades = snapshot.requireData;
              return buildListView(listaPropriedades);
            }
            return Center(child: CircularProgressIndicator());
        },

        ),
      bottomNavigationBar: buildBottomNavBar(),
    );
  }

  buildListView(listaPropriedades) {
    return ListView.builder(
      itemCount: listaPropriedades.length,
      itemBuilder: (context, i) {
        return ReceitasProp(propReceitas: listaPropriedades[i]);
      },
    );
  } //

  Widget infoPerfil(String numero, String texto) {
    return Column(
      children: [
        Text(numero, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Color(0xff100ea6))),
        Text(texto, style: TextStyle(color: Color(0xff100ea6)))
      ],
    );
  }

  buildTelaPerfil() {
    return Column(
        children: [
          Padding(
            padding: EdgeInsets.all(16),
            child: Row(children: [
              CircleAvatar(radius: 45, backgroundColor: Color(0xff100ea6),
                child: Icon(Icons.person, size: 80, color: Colors.white),
              ),
              SizedBox(width: 20),
              Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      infoPerfil("5", "Receitas"),
                      infoPerfil("77", "Seguidores"),
                      infoPerfil("82", "Seguindo"),
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
                  Text("Wade S. Gomez",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Color(0xff100ea6))
                  ),
                  Text("Apaixonado pela culinária nordestina ❤️🌵",
                    style: TextStyle(color: Color(0xff100ea6))
                  ),
                  Text("Brasil 🏡",
                    style: TextStyle(color: Color(0xff100ea6))
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
                    style: ElevatedButton.styleFrom(backgroundColor: Color(0xff100ea6), foregroundColor: Colors.white),
                    onPressed: () {},
                    child: Text("Editar perfil"),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: Color(0xff100ea6), foregroundColor: Colors.white),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => NovaReceita()));
                    },
                    child: Text("Nova receita")
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
              Icon(Icons.grid_on, color: Color(0xff100ea6)),
              Icon(Icons.favorite_border, color: Color(0xff100ea6)),
              Icon(Icons.person_outline, color: Color(0xff100ea6)),
            ],
          ),
          Divider(),
        ],
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
        BottomNavigationBarItem(icon: Icon(Icons.restaurant), label: 'Explorar'),
        BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favoritos'),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Ajustes'),
      ],
    );
  }

  PreferredSizeWidget buildAppBar() {
    if (selectedIndex == 0) {
      return AppBar(
        centerTitle: false,
        title: Text('Home', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
        backgroundColor: Color(0xff100ea6),
      );
    }

    if (selectedIndex == 1) {
      return AppBar(
        centerTitle: false,
        title: Text('Buscar', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
        backgroundColor: Color(0xff100ea6),
      );
    }

    if (selectedIndex == 2) {
      return AppBar(
        centerTitle: false,
        title: Text('Explorar', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
        backgroundColor: Color(0xff100ea6),
      );
    }

    if (selectedIndex == 3) {
      return AppBar(
        centerTitle: false,
        title: Text('Favoritos', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
        backgroundColor: Color(0xff100ea6),
      );
    }

    return AppBar(
      centerTitle: false,
      title: Text('Tela de perfil do usuário', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
      backgroundColor: Color(0xff100ea6)
    );
  }
}