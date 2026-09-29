class Meals {
  final String nome;
  final String urlImagem;
  final String categoria;
  final String pais;
  final String instrucoes;
  final List<String> ingredientes;
  final List<String> medidas;

  Meals({
    required this.nome,
    required this.urlImagem,
    required this.categoria,
    required this.pais,
    required this.instrucoes,
    required this.ingredientes,
    required this.medidas
});

  factory Meals.fromJson(Map<String, dynamic> json) {
    return Meals(
      nome: json['strMeal'] ?? '',
      urlImagem: json['strMealThumb'] ?? '',
      categoria: json['strCategory'] ?? '',
      pais: json['strCountry'] ?? '',
      instrucoes: json['strInstructions'] ?? '',
      ingredientes: [
        json['strIngredient1'] ?? '',
        json['strIngredient2'] ?? '',
        json['strIngredient3'] ?? '',
        json['strIngredient4'] ?? ''
      ],
      medidas: [
        json['strMeasure1'] ?? '',
        json['strMeasure2'] ?? '',
        json['strMeasure3'] ?? '',
        json['strMeasure4'] ?? ''
      ]
    );
  }
}