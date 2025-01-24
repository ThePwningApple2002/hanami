import 'package:flutter/material.dart';
import 'package:hanami/orders/repositories/temp_data.dart';
import 'package:hanami/orders/view/widgets/widgets.dart';
import '../../models/models.dart';




class OrdersPage extends StatelessWidget {
  const OrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Parse dummy data into buyers
    final rawData = TempData.getDummyData();
    final buyersJson = rawData['buyers'] as List<dynamic>;
    final List<Buyer> buyers = buyersJson.map((json) => Buyer.fromJson(json)).toList();

    return Scaffold(
      backgroundColor: Colors.grey[100],
      
      body: ListView.builder(
        // padding: const EdgeInsets.all(16.0),
        itemCount: buyers.length,
        itemBuilder: (context, index) {
          final buyer = buyers[index];
          return BuyerCard(buyer: buyer);
        },
      ),
    );
  }
}
