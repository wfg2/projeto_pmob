
import 'package:flutter/material.dart';
import 'package:projeto/api/meals_api.dart';

import '../domain/meals.dart';

class ReceitasPadrao extends StatefulWidget {

  const ReceitasPadrao({super.key});

  @override
  State<ReceitasPadrao> createState() => _ReceitasPadraoState();
}

class _ReceitasPadraoState extends State<ReceitasPadrao> {
  late Future<List<Meals>> receitasGalinha;
  late Future<List<Meals>> receitasOvo;
  late Future<List<Meals>> receitasArroz;
  late Future<List<Meals>> receitasQueijo;
  
  @override
  void initState() {
    super.initState();
    receitasGalinha = Mealsapi().listarReceitasPorIngrediente('chicken');
    receitasOvo = Mealsapi().listarReceitasPorIngrediente('eggs');
    receitasArroz = Mealsapi().listarReceitasPorIngrediente('rice');
    receitasQueijo = Mealsapi().listarReceitasPorIngrediente('cheese');
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
        children: [
          buildSecoes(secao: 'RECEITAS COM FRANGO'),
          buildListView(receitasGalinha),
          buildSecoes(secao: 'RECEITAS COM OVOS'),
          buildListView(receitasOvo),
          buildSecoes(secao: 'RECEITAS COM ARROZ'),
          buildListView(receitasArroz),
          buildSecoes(secao: 'RECEITAS COM QUEIJO'),
          buildListView(receitasQueijo),
        ]
    );
  }
  Widget buildSecoes({
    required String secao
  }){
    return Padding(
      padding: EdgeInsets.all(12),
      child: Text(
        secao,
        style: TextStyle(
            color: Color(0xFF1800ad),
            fontWeight: FontWeight.bold,
            fontSize: 30.0,
            fontFamily: 'Oswald'
        ),
      ),
    );
  }
  
  buildListView(Future<List<Meals>> listafuture) {
    return SizedBox(
      height: 200,
      child: FutureBuilder(
        future: listafuture,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<Meals> listaMeals = snapshot.requireData;
            return ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              itemCount: listaMeals.length,
              itemBuilder: (context, i) {
                return buildReceitas(meal: listaMeals[i]);
              }
            );
          }
          
          return Center(child: CircularProgressIndicator());
        }
      )
    );
  }

  Widget buildReceitas({required Meals meal}) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 6.0, vertical: 8.0),
      child: Container(
        width: 200.0,
        decoration: BoxDecoration(
          color: Color(0xFFF8F9FA),
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 6,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(12),
                topLeft: Radius.circular(12),
              ),
              child: Image.network(
                meal.urlImagem,
                height: 120,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),

            Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          meal.nome,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 15.0,
                            color: Color(0xFF002566),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(width: 2),
                      Text(
                        meal.rate.toStringAsFixed(1),
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF002566),
                        ),
                      ),
                      Icon(Icons.star_half_outlined, size: 16, color: Color(0xFF1800ad)),
                    ],
                  ),
                  SizedBox(height: 4),
                  Row(
                    children: [
                      SizedBox(width: 2),
                      Expanded(
                        child: Text(
                          'Origem: ${meal.pais}',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 13.0,
                            color: Color(0xFF1800ad),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}