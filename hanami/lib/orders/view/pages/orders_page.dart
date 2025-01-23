import 'package:flutter/material.dart';
import 'package:hanami/orders/view/widgets/custom_appbar.dart';
import 'package:hanami/style/styleguide.dart';

class OrdersPage extends StatelessWidget {
  const OrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomAppbar(),
        ],
      ),
    );
  }
}
