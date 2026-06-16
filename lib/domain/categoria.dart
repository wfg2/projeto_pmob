class Categoria {
  late String urlImagem;
  late String categoria;

  Categoria ({
    required this.urlImagem,
    required this.categoria,
  });

  Categoria.fromJson(Map<String, dynamic> json) {
    urlImagem = json['urlImagem'];
    categoria = json['categoria'];
  }
}