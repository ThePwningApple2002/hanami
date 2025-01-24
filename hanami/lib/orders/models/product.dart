class Product {
  final String ime;
  final String materijal;
  final double cena;
  final String imageUrl;

  Product({required this.ime, required this.materijal, required this.cena, required this.imageUrl});

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
        ime: json['name'] ?? '',
        materijal: json['materijal'] ?? '',
        cena: json['cena'] ?? 0,
        imageUrl: json['imageUrl'] ?? '');
        
  }
}
