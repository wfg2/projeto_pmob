import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:projeto/widget/container_meals.dart';
import 'package:provider/provider.dart';
import 'package:projeto/provider/favorite_provider.dart';

import '../domain/meals.dart';

class PaginaFavoritos extends StatefulWidget {
  const PaginaFavoritos({super.key});

  @override
  State<PaginaFavoritos> createState() => _PaginaFavoritosState();
}

class _PaginaFavoritosState extends State<PaginaFavoritos> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<Meals> listaMeals = context.read<FavoriteProvider>().favoritos;

    return Scaffold(
        body: ListView.builder(
          itemCount: listaMeals.length,
          itemBuilder: (context, i) {
            return ContainerMeals(meals: listaMeals[i]);
          },
        )
    );
  }

  // buildListView(listaReceitasCategorias) {
  //   return ListView.builder (
  //       itemCount: listaReceitasCategorias.length,
  //       itemBuilder: (context, i) {
  //         return ContainerReceitasCategorias(receitasCategorias: listaReceitasCategorias[i]);
  //       }
  //   );
}
