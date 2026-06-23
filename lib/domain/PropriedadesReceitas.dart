class PropriedadeReceitas {
  late String nome;
  late String imagem;
  late String tempo;
  late String categoria;

  PropriedadeReceitas({
    required this.nome,
    required this.imagem,
    required this.tempo,
    required this.categoria,
  });

  PropriedadeReceitas.fromJson(Map<String, dynamic> json) {
    nome = json['nome'];
    imagem = json['imagem'];
    tempo = json['tempo'];
    categoria = json['categoria'];
  }
}