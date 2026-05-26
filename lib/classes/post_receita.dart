class PostReceita {
  // perfil
  String fotodeperfil;
  String nomeusuario;
  String dataehora;
  // post
  String fotopost;
  String legenda;
  String likes;
  String comentarios;
  String compartilhamentos;
  // receita
  String nomereceita;
  int temporeceita;
  String nivelreceita;
  String fotoreceita;

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
  });
}