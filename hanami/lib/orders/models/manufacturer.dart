import 'package:hanami/orders/models/models.dart';

class Manufacturer {
  final String ime;
  final List<Product> proizvodi;

  Manufacturer({required this.ime, required this.proizvodi});
  
  factory Manufacturer.fromJson(Map<String, dynamic> json){
    final productsJson = json['products'] as List<dynamic>?;
    return Manufacturer(

      ime: json['ime'] ?? '', 
      proizvodi: productsJson != null 
          ? productsJson.map((item) => Product.fromJson(item)).toList()
          : [],
      );
  }
}