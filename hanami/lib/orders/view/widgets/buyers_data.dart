import 'package:flutter/material.dart';
import 'package:hanami/orders/models/models.dart';
import 'package:hanami/orders/view/widgets/mobile/mobile.dart';
import 'package:hanami/orders/view/widgets/web/web.dart';

class BuyersData extends StatelessWidget {
  final Buyer buyer;
  final OrderList orderList;

  const BuyersData({super.key, required this.buyer, required this.orderList});
  @override
  Widget build(BuildContext context) {
    bool isWeb = MediaQuery.of(context).size.width > 750;

    return isWeb
        ? BuyerDataWeb(
            buyer: buyer,
            orderList: orderList,
          )
        : BuyerDataMobile(
            buyer: buyer,
            orderList: orderList,
          );
  }
}
