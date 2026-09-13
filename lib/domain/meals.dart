import 'dart:math';

class Meals {
  late String id;
  late String nome;
  late String urlImagem;
  late String categoria;
  late String pais;
  late double rate;

  Meals.fromJson(Map<String, dynamic> json) {
    id = json['idMeal'] ?? '';
    nome = json['strMeal'] ?? '';
    urlImagem = json['strMealThumb'] ?? '';
    categoria = json['strCategory'] ?? '';
    pais = json['strCountry'] ?? '';
    rate = notaAleatoria();
  }

  double notaAleatoria() {
    final nota = Random();
    return 3.0 + nota.nextDouble() * 2.0;
  }
}