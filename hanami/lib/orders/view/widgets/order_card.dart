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
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "$orderIndex.",
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    ImageIcon(AssetImage("assets/papirolovka.png")),
                    ImageIcon(AssetImage("assets/kanta.png"))
                  ],
                ),
              ],
            ),
            const SizedBox(height: 8),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
                child: const Text(
                  "Za izradu",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(height: 8),
            Column(
              spacing: 20,
              children: order.listaproizvoda.map((product) {
                return ProductCard(
                  popust: order.popust,
                  product: product,
                  kolicina: order.kolicina,
                  gravura: order.gravura,
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
