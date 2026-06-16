class Receitas {
  late String nome;
  late String imagem;
  late String tempo;
  late String categoria;

  Receitas({
    required this.nome,
    required this.imagem,
    required this.tempo,
    required this.categoria,
  });

  Receitas.fromJson(Map<String, dynamic> json) {
    nome = json['nome'];
    imagem = json['imagem'];
    tempo = json['tempo'];
    categoria = json['categoria'];
  }
}