class Product {
    final String ime;
    final String materijal;
    final double cena;
    final List<String> imageUrls; // Changed from String to List<String>

    Product({
      required this.ime, 
      required this.materijal, 
      required this.cena, 
      required this.imageUrls
    });

    factory Product.fromJson(Map<String, dynamic> json) {
      return Product(
          ime: json['ime'] ?? '',
          materijal: json['materijal'] ?? '',
          cena: json['cena'] ?? 0,
          imageUrls: List<String>.from(json['imageUrls'] ?? [])); 
    }
}
