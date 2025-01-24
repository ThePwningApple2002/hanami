import 'package:flutter/material.dart';
import 'package:hanami/orders/models/models.dart';
import 'package:hanami/orders/view/widgets/widgets.dart';

class OrderListCard extends StatelessWidget {
  final OrderList orderList;

  const OrderListCard({super.key, required this.orderList});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(orderList.listaporudzbina.length, (index) {
        final order = orderList.listaporudzbina[index];
        return OrderCard(order: order, orderIndex: index + 1); // Index for order numbering
      }),
    );
  }
}

