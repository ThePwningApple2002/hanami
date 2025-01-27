import 'package:flutter/material.dart';
import 'package:hanami/orders/models/models.dart';
import 'package:hanami/orders/view/widgets/mobile/product_card_mobile.dart';
import 'package:hanami/orders/view/widgets/web/web.dart';


class OrderCard extends StatelessWidget {
  final Order order;

  const OrderCard({super.key, required this.order});

  @override
  Widget build(BuildContext context) {
    bool isWeb = MediaQuery.of(context).size.width > 750;
    return Card(
      
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
   
            Column(
              spacing: 20,
              children: order.listaproizvoda.asMap().entries.map((entry) {
                final index = entry.key;
                final product = entry.value;
                return isWeb
                    ? ProductCardWeb(
                        popust: order.popust,
                        product: product,
                        kolicina: order.kolicina,
                        gravura: order.gravura,
                        index: index + 1, // Add index
                      )
                    : ProductCardMobile(
                        popust: order.popust,
                        product: product,
                        kolicina: order.kolicina,
                        gravura: order.gravura,
                        index: index + 1, // Add index
                      );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
