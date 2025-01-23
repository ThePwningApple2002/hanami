import './models.dart';

class OrderList {
  final Buyer kupac;
  List<Order> listaporudzbina;

  OrderList({required this.kupac, List<Order>? listaporudzbina})
      : listaporudzbina = listaporudzbina ?? [];
}
