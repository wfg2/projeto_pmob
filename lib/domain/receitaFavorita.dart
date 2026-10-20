class ReceitaFavorita{
  late String id;
  late String foto_Receita;
  late String nome_Receita;

  ReceitaFavorita({
    required  this.id,
    required  this.foto_Receita,
    required  this.nome_Receita,
  });

  ReceitaFavorita.fromJson(Map<String, dynamic> json) {
    id = (json['id']);
    foto_Receita = (json['fotoReceita']);
    nome_Receita = (json['nomeReceita']);
  }
}