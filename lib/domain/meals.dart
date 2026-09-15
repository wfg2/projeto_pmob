import 'dart:math';

class Meals {
  late String nome;
  late String urlImagem;
  late String categoria;
  late String pais;
  late String instrucoes;
  late List<String> ingredientes;
  late double rate;

  Meals.fromJson(Map<String, dynamic> json) {
    nome = json['strMeal'] ?? '';
    urlImagem = json['strMealThumb'] ?? '';
    categoria = json['strCategory'] ?? '';
    pais = json['strCountry'] ?? '';
    instrucoes = json['strInstructions'] ?? '';
    ingredientes = [
      json['strIngredient1'] ?? '',
      json['strIngredient2'] ?? '',
      json['strIngredient3'] ?? '',
      json['strIngredient4'] ?? '',
      json['strIngredient5'] ?? ''
    ];
    rate = notaAleatoria();
  }

  double notaAleatoria() {
    final nota = Random();
    return 3.0 + nota.nextDouble() * 2.0;
  }
}