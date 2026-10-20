import 'package:flutter/material.dart';
import 'package:projeto/api/Pesquisa_receitafav_api.dart';
import 'package:projeto/api/receitafav_api.dart';
import 'package:projeto/domain/receitaFavorita.dart';
import 'package:projeto/widget/container_favoritos.dart';
import '../domain/Pesquisa_receitaFavorita.dart';
import '../widget/widget_pesquisaRecFav.dart';

class TelaFavoritos extends StatefulWidget {
  const TelaFavoritos({super.key});

  @override
  State<TelaFavoritos> createState() => _TelaFavoritosState();
}

class _TelaFavoritosState extends State<TelaFavoritos> {
  TextEditingController pesquisaController = TextEditingController();

  int selectedIndex = 3;
  late Future<List<dynamic>> futureListaGeral;

  @override
  void initState() {
    super.initState();
    futureListaGeral = ReceitafavApi().listarReceitasFavoritas();
  }

  Future<void> onPressed() async {
    String nome = pesquisaController.text.trim();

    setState(() {
      if (nome.isEmpty) {
        futureListaGeral = ReceitafavApi().listarReceitasFavoritas();
      } else {
        futureListaGeral = PesquisaReceitafavoritaAPI().listarReceitasFavoritas(nome);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF1800ad),
        leading: const Icon(Icons.favorite, color: Colors.white, size: 30),
        title: const Text(
          'Receitas Favoritas',
          style: TextStyle(
            color: Colors.white,
            fontSize: 40,
            fontWeight: FontWeight.bold,
            fontFamily: 'Allison',
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: pesquisaController,
              onSubmitted: (val) => onPressed(),
              decoration: InputDecoration(

                prefixIcon: IconButton(
                  onPressed: onPressed,
                  icon: const Icon(
                    Icons.search,
                    color: Color(0xFF1800ad),
                    size: 30,
                  ),
                ),
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      pesquisaController.clear();
                      futureListaGeral = ReceitafavApi().listarReceitasFavoritas();
                    });
                  },
                  icon: const Icon(
                    Icons.cancel,
                    color: Color(0xFF1800ad),
                    size: 30,
                  ),
                ),
                hintText: 'Encontre sua receita favorita',
                hintStyle: const TextStyle(
                  color: Color(0xFF1800ad),
                  fontSize: 12.0,
                  fontFamily: 'Montserrat',
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
              ),
            ),
          ),

          Expanded(
            child: FutureBuilder<List<dynamic>>(
              future: futureListaGeral,
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return const Center(
                      child: Text('Erro ao carregar dados'));
                }

                if (snapshot.hasData) {
                  List<dynamic> lista = snapshot.requireData;

                  if (lista.isEmpty) {
                    return const Center(
                      child: Text('Nenhuma receita encontrada.'),
                    );
                  }

                  if (lista.first is PesquisaReceitafavorita) {
                    return buildListViewPesq(lista.cast<PesquisaReceitafavorita>());
                  }

                  return buildListView(lista.cast<ReceitaFavorita>());
                }

                return const Center(child: CircularProgressIndicator());
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: buildBottomNavBar(),
    );
  }

  Widget buildListView(List<ReceitaFavorita> listaReceitasFavoritas) {
    return ListView.builder(
      itemCount: listaReceitasFavoritas.length,
      itemBuilder: (context, i) {
        return ContainerFavoritos(receitafavorita: listaReceitasFavoritas[i]);
      },
    );
  }

  Widget buildListViewPesq(List<PesquisaReceitafavorita> listaPesqReceFav) {
    return ListView.builder(
      itemCount: listaPesqReceFav.length,
      itemBuilder: (context, i) {
        return WidgetPesquisarecfav(receitafavorita: listaPesqReceFav[i]);
      },
    );
  }

  Widget buildBottomNavBar() {
    return BottomNavigationBar(
      backgroundColor: const Color(0xFF1800ad),
      currentIndex: selectedIndex,
      selectedItemColor: Colors.white,
      unselectedItemColor: const Color(0xFF8693de),
      showUnselectedLabels: true,
      type: BottomNavigationBarType.fixed,
      onTap: (index) {
        setState(() {
          selectedIndex = index;
        });
      },
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Buscar'),
        BottomNavigationBarItem(icon: Icon(Icons.restaurant), label: 'Explorar'),
        BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favoritos'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Perfil'),
      ],
    );
  }
}