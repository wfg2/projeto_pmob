class ReceitaFavorita{
  late String foto_Receita;
  late String nome_Receita;

  ReceitaFavorita({
    required String this.foto_Receita,
    required String this.nome_Receita,
});
  ReceitaFavorita.fromJson(Map<String, dynamic> json) {
    foto_Receita = (json['foto_Receita']);
    nome_Receita = (json['nome_Receita']);
  }
}