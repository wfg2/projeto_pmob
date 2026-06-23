class Receitascategorias {
  late String urlImagem;
  late String receita;
  late String timer;
  late String user;

  Receitascategorias({
    required this.urlImagem,
    required this.receita,
    required this.user
  });

  Receitascategorias.fromJson(Map<String, dynamic> json) {
    urlImagem = json['urlImagem'];
    receita = json['receita'];
    timer = json['timer'];
    user = json['user'];
  }
}