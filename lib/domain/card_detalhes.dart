class CardDetalhes {
  String nomereceita;
  String temporeceita;
  String nivelreceita;
  String fotoreceita;
  List<String> ingredientes;
  List<String> preparo;


  CardDetalhes({
    required String this.nomereceita,
    required String this.temporeceita,
    required String this.nivelreceita,
    required String this.fotoreceita,
    required this.ingredientes,
    required this.preparo,
  });
}