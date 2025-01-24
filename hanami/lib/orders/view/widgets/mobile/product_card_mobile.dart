import 'package:flutter/material.dart';
import 'package:hanami/orders/models/models.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  final int kolicina;
  final String gravura;
  final double popust;

  const ProductCard({
    super.key,
    required this.popust,
    required this.product,
    required this.kolicina,
    required this.gravura,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all(
                    color: Colors.orange, // Border color
                    width: 2.0,
                  ),
                  image: DecorationImage(
                    image: NetworkImage(
                      product.imageUrl.isNotEmpty
                          ? product.imageUrl
                          : 'https://static.vecteezy.com/system/resources/thumbnails/036/324/708/small_2x/ai-generated-picture-of-a-tiger-walking-in-the-forest-photo.jpg',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  spacing: 8,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.ime,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      "Materijal: ${product.materijal}",
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      "Količina: $kolicina",
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      "popust: $popust%",
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      "Cena: ${product.cena.toStringAsFixed(2)} RSD",
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      "Ukupno: ${(product.cena * kolicina).toStringAsFixed(2)} RSD",
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          const Text(
            "Gravura:",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Container(
            width: double.infinity,
            height: 150,
            margin: const EdgeInsets.only(top: 4),
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: const Color(0xFFFCEBDC),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Center(
              child: Text(
                style: TextStyle(fontWeight: FontWeight.bold),
                gravura.isNotEmpty ? gravura : "Nema gravure",
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
