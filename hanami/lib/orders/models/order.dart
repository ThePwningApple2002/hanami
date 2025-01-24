import './models.dart';

class Order {
  final double popust;
  int kolicina;
  final String gravura;
  final List<Product> listaproizvoda;

  Order({
    required this.kolicina,
    required this.gravura,
    required this.popust,
    List<Product>? listaproizvoda,
  }) : listaproizvoda = listaproizvoda ?? [];

  factory Order.fromJson(Map<String, dynamic> json) {
    final productsJson = json['products'] as List<dynamic>?;

    return Order(
      kolicina: json['kolicina'] ?? 1,
      gravura: json['gravura'] ?? 'nema gravure',
      popust: json['popust'] ?? 0.0,
      listaproizvoda: productsJson != null
          ? productsJson.map((item) => Product.fromJson(item)).toList()
          : [],
    );
  }
}
