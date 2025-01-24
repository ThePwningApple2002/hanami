import 'package:flutter/material.dart';
import 'package:hanami/orders/models/models.dart';
import 'package:hanami/orders/view/widgets/widgets.dart';
class OrderCard extends StatelessWidget {
  final Order order;
  final int orderIndex;

  const OrderCard({super.key, required this.order, required this.orderIndex});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(top: 8.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: const BorderSide(color: Color(0xFFF5A25D)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Order Header
            Text(
              "$orderIndex.",
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                side: const BorderSide(color: Color(0xFFF5A25D)),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              ),
              child: const Text("Za izradu"),
            ),
            const SizedBox(height: 8),

            // Render products
            Column(
              children: order.listaproizvoda.map((product) {
                return ProductCard(product: product);
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
