import 'dart:math';
class Meals {
  final String nome;
  final String urlImagem;
  final String categoria;
  final String pais;
  final String instrucoes;
  final List<String> ingredientes;
  final List<String> medidas;
  final double avaliacao;

  Meals({
    required this.nome,
    required this.urlImagem,
    required this.categoria,
    required this.pais,
    required this.instrucoes,
    required this.ingredientes,
    required this.medidas,
    required this.avaliacao
});

  factory Meals.fromJson(Map<String, dynamic> json) {
    return Meals(
      nome: json['strMeal'] ?? '',
      urlImagem: json['strMealThumb'] ?? '',
      categoria: json['strCategory'] ?? '',
      pais: json['strCountry'] ?? '',
      instrucoes: json['strInstructions'] ?? '',
      ingredientes: [
        for (int i = 1; i < 21; i++)
          if ((json['strIngredient$i'] ?? '').toString().trim().isNotEmpty)
            json['strIngredient$i']
      ],
      medidas: [
        for (int i = 1; i < 21; i++)
          if ((json['strMeasure$i'] ?? '').toString().trim().isNotEmpty)
            json['strMeasure$i']
      ],
      avaliacao: double.parse((3.5 + Random().nextDouble() * 1.5).toStringAsFixed(1))
    );
  }
}