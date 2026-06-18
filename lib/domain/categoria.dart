class Categoria {
  late int? id;
  late String urlImagem;
  late String categoria;

  Categoria ({
    this.id,
    required this.urlImagem,
    required this.categoria,
  });

  Categoria.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    urlImagem = json['urlImagem'];
    categoria = json['categoria'];
  }
}