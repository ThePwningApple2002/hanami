import 'package:flutter/material.dart';
import 'package:hanami/orders/repositories/temp_data.dart';
import '../../models/models.dart'; // Include Buyer and OrderList models
import '../widgets/widgets.dart'; // Include BuyerCard (and other widget dependencies)

class OrdersPage extends StatelessWidget {
  const OrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    final rawData = TempData.getDummyData();

    final orderListsJson = rawData['orderLists'] as List<dynamic>? ?? [];

    final List<OrderList> orderLists = orderListsJson
        .map((orderListJson) => OrderList.fromJson(orderListJson))
        .toList();
    bool isWeb = MediaQuery.of(context).size.width > 750;

    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: orderLists.isEmpty
          ? const Center(
              child: Text(
                'No orders available.',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            )
          : ListView.builder(
              itemCount: orderLists.length,
              itemBuilder: (context, index) {
                final orderList = orderLists[index];
                final buyer = orderList.kupac;

                return isWeb
                    ? BuyerCardWeb(
                        buyer: buyer,
                        orderList: orderList,
                      )
                    : BuyerCardMobile(buyer: buyer, orderList: orderList);
              },
            ),
    );
  }
}
