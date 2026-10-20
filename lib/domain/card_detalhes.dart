class CardDetalhes {
  String nomereceita;
  String temporeceita;
  String nivelreceita;
  String fotoreceita;
  List<String> ingredientes;
  List<String> preparo;
  double latitude;
  double longitude;

  CardDetalhes({
    required this.nomereceita,
    required this.temporeceita,
    required this.nivelreceita,
    required this.fotoreceita,
    required this.ingredientes,
    required this.preparo,
    required this.latitude,
    required this.longitude,
  });
}