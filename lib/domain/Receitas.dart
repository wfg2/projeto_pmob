class Receitas {
  late String nome;
  late String categoria;
  late String tempo;
  late String ingredientes;
  late String descricao;
  late String foto;

  Receitas({
    required this.nome,
    required this.categoria,
    required this.tempo,
    required this.ingredientes,
    required this.descricao,
    required this.foto,
  });

  factory Receitas.fromJson(Map<String, dynamic> json) {
    return Receitas(
      nome: json['nome'] ?? '',
      categoria: json['categoria'] ?? '',
      tempo: json['tempo'] ?? '',
      ingredientes: json['ingredientes'] ?? '',
      descricao: json['descricao'] ?? '',
      foto: json['foto'] ?? '',
    );
  }
}