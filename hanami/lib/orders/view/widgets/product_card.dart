
import 'package:flutter/material.dart';
import 'package:hanami/orders/models/models.dart';
class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              image: DecorationImage(
                image: NetworkImage(
                  product.imageUrl.isNotEmpty ? product.imageUrl : 'https://static.vecteezy.com/system/resources/thumbnails/036/324/708/small_2x/ai-generated-picture-of-a-tiger-walking-in-the-forest-photo.jpg',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.ime,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                Text("Materijal: ${product.materijal}"),
                Text("Količina: 3"), // Change dynamically if you have the quantity data
                Text("Popust: 20%"),
                Text("Cena: ${product.cena.toStringAsFixed(2)} RSD"),
                Text("Ukupno: ${(product.cena * 3).toStringAsFixed(2)} RSD"), // Example calculation
                const SizedBox(height: 8),
                const Text(
                  "Gravura:",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 4),
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: const Color(0xFFFCEBDC),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: const Text("OVDE IDE TEKST KOJI SE GRAVIRA"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

