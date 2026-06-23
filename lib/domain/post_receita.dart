class PostReceita {
  // perfil
  late String fotodeperfil;
  late String nomeusuario;
  late String dataehora;
  // post
  late String fotopost;
  late String legenda;
  late String likes;
  late String comentarios;
  late String compartilhamentos;
  // receita
  late String nomereceita;
  late String temporeceita;
  late String nivelreceita;
  late String fotoreceita;

  late List<String> ingredientes;
  late List<String> preparo;

  PostReceita({
  required this.fotodeperfil,
  required this.nomeusuario,
  required this.dataehora,
  // post
  required this.fotopost,
  required this.legenda,
  required this.likes,
  required this.comentarios,
  required this.compartilhamentos,
  // receita
  required this.nomereceita,
  required this.temporeceita,
  required this.nivelreceita,
  required this.fotoreceita,

  required this.ingredientes,
  required this.preparo
  });

  PostReceita.fromJson(Map<String, dynamic> json){
    fotodeperfil = json['fotodeperfil'];
    nomeusuario = json['nomeusuario'];
    dataehora = json['dataehora'];

    fotopost = json['fotopost'];
    legenda = json['legenda'];
    likes = json['likes'];
    comentarios = json['comentarios'];
    compartilhamentos = json['compartilhamentos'];

    nomereceita = json['nomereceita'];
    temporeceita = json['temporeceita'];
    nivelreceita = json['nivelreceita'];
    fotoreceita = json['fotoreceita'];

    ingredientes = (json['ingredientes'] as String?)?.split('|||') ?? [];
    preparo = (json['preparo'] as String?)?.split('|||') ?? [];
  }
}