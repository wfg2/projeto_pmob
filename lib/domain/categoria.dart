class Categoria {
  late String id;
  late String urlImagem;
  late String categoria;

  Categoria ({
    required this.id,
    required this.urlImagem,
    required this.categoria,
  });

  Categoria.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    urlImagem = json['urlImagem'];
    categoria = json['categoria'];
  }
}