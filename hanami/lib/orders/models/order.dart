import './models.dart';

class Order {
  final double popust;
  List<Product> listaproizvoda;

  Order({
    required this.popust,
    List<Product>? listaproizvoda,
    }) : listaproizvoda = listaproizvoda ?? [];
  
}