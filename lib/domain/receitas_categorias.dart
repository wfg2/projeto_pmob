class Receitascategorias {
  late int categoria_id;
  late String urlImagem;
  late String receita;
  late String timer;
  late String user;
  late String rate;

  Receitascategorias({
    required this.categoria_id,
    required this.urlImagem,
    required this.receita,
    required this.timer,
    required this.user,
    required this.rate
  });

  Receitascategorias.fromJson(Map<String, dynamic> json) {
    categoria_id = json['categoria_id'];
    urlImagem = json['urlImagem'];
    receita = json['receita'];
    timer = json['timer'];
    user = json['user'];
    rate = json['rate'];
  }
}