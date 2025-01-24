import './models.dart';

class OrderList {
  final Buyer kupac;
  final DateTime datumKreiranja;
  final DateTime datumIsporuke;
  final DateTime neSlatiPre;
  final String nacinPlacanja;
  final bool besplatnaDos;
  final List<Order> listaporudzbina;

  OrderList({
    required this.besplatnaDos,
    required this.kupac,
    required this.neSlatiPre,
    required this.datumKreiranja,
    required this.datumIsporuke,
    required this.nacinPlacanja,
    List<Order>? listaporudzbina,
  }) : listaporudzbina = listaporudzbina ?? [];

  factory OrderList.fromJson(Map<String, dynamic> json) {
    final ordersJson = json['orders'] as List<dynamic>?;

    return OrderList(
      besplatnaDos: json['besplatnaDos'] ?? true,
      kupac: Buyer.fromJson(json['kupac']),
      neSlatiPre: json['neSlatiPre'] != null
          ? DateTime.parse(json['neSlatiPre'])
          : DateTime.now(),
      datumKreiranja: json['datumKreiranja'] != null
          ? DateTime.parse(json['datumKreiranja'])
          : DateTime.now(),
      datumIsporuke: json['datumIsporuke'] != null
          ? DateTime.parse(json['datumIsporuke'])
          : DateTime.now(),
      nacinPlacanja: json['nacinPlacanja'] ?? '',
      listaporudzbina: ordersJson != null
          ? ordersJson.map((orderJson) => Order.fromJson(orderJson)).toList()
          : [],
    );
  }
}
