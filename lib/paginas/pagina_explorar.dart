import 'package:flutter/material.dart';
import 'package:projeto/api/meals_api.dart';
import 'package:projeto/widget/container_meals.dart';
import 'package:projeto/domain/meals.dart';
import 'package:projeto/widget/receitas_padrao.dart';

class TelaExplorar extends StatefulWidget {
  const TelaExplorar({super.key});

  @override
  State<TelaExplorar> createState() => _TelaExplorarState();
}

class _TelaExplorarState extends State<TelaExplorar> {
  TextEditingController buscar = TextEditingController();
  late Future<List<Meals>> futureListaMeals;

  @override
  void initState() {
    super.initState();
    futureListaMeals = Future.value([]);
  }

  onPressed() {
    String nome = buscar.text;

    if (nome.isNotEmpty) {
      setState(() {
        futureListaMeals = Mealsapi().listarReceitasPorNome(nome);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: buildTextField()
            ),

            Expanded(
              child: FutureBuilder(
                future: futureListaMeals,
                builder: (context, snapshot) {
                  if (snapshot.hasError) {
                    return Center(child: Text('Erro ao carregar dados'));
                  }

                  if (snapshot.hasData) {
                    List<Meals> listaMeals = snapshot.requireData;

                    if (listaMeals.isEmpty) {
                      return ReceitasPadrao();
                    }
                    return buildListView(listaMeals);
                  }

                  return Center(child: CircularProgressIndicator());
                }
              ),
            ),
          ],
        )
    );
  }

  buildTextField() {
    return TextField(
      controller: buscar,
      onSubmitted: (valor) => onPressed(),
      decoration: InputDecoration(

          focusColor: Color(0xFF2113FE),
          prefixIcon: IconButton(
            icon: Icon(Icons.search,
                color: Color(0xFF2113FE)),
            onPressed: onPressed,
          ),

          suffixIcon: IconButton(
            icon: Icon(Icons.clear,
                color: Color(0xFF2113FE)),
            onPressed: () {
              setState(() {
                buscar.clear();
                futureListaMeals = Future.value([]);
              });
            },
          ),

          hintText: 'O que você está procurando?',
          hintStyle: TextStyle(
              color: Color(0xFF2113FE),
              fontSize: 16.0,
              fontFamily: 'Montserrat'
          ),

          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(24.0),
          )
      ),

      style: TextStyle(
        color: Color(0xFF2113FE),
        fontSize: 16.0,
        fontFamily: 'Montserrat',

      ),
    );
  }

  buildListView(listaMeals) {
    return ListView.builder(
        itemCount: listaMeals.length,
        itemBuilder: (context, i) {
          return ContainerMeals(meals: listaMeals[i]);
        }
    );
  }
}
