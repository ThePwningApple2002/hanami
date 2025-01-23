class Product {
  final String ime;
  final String materijal;
  final double cena;

  Product({required this.ime, required this.materijal, required this.cena});

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
        ime: json['name'] ?? '',
        materijal: json['materijal'] ?? '',
        cena: json['cena'] ?? 0);
  }
}
