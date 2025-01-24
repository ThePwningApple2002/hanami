import './models.dart';

class Order {
  final double popust; // Discount on the order
  final List<Product> listaproizvoda; // List of products associated with this order

  Order({
    required this.popust,
    List<Product>? listaproizvoda,
  }) : listaproizvoda = listaproizvoda ?? []; // Initialize listaproizvoda with an empty list if null

  // Factory constructor to parse JSON into an Order object
  factory Order.fromJson(Map<String, dynamic> json) {
    // Parse the `products` key (array of products) into List<Product>
    final productsJson = json['products'] as List<dynamic>?;

    return Order(
      popust: json['popust'] ?? 0.0, // Default popust to 0.0 if not provided
      listaproizvoda: productsJson != null
          ? productsJson.map((item) => Product.fromJson(item)).toList()
          : [], // Default to an empty list if products aren't present
    );
  }


}