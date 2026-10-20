class PesquisaReceitafavorita {
  late String id;
  late String foto_Receita;
  late String nome_Receita;
  late String tempo_Receita;
  late String porcoes_Receita;

  PesquisaReceitafavorita.fromJson(Map<String, dynamic> json) {
    id = json['id']?.toString() ?? '';
    foto_Receita = json['image'] ?? '';
    nome_Receita = json['title'] ?? '';
    tempo_Receita = json['readyInMinutes']?.toString() ?? '0';
    porcoes_Receita = json['servings']?.toString() ?? '0';
  }
}