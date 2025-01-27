import 'package:flutter/material.dart';
import 'package:hanami/orders/view/widgets/order_list_card.dart';
import '../../../models/models.dart';
import '../buyers_data.dart';

class BuyerCardMobile extends StatelessWidget {
  final Buyer buyer;
  final OrderList orderList;

  const BuyerCardMobile(
      {super.key, required this.buyer, required this.orderList});

  @override
  @override
  Widget build(BuildContext context) {
    bool isWeb = MediaQuery.of(context).size.width > 750;
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: const BorderSide(color: Color(0xFFF5A25D)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 14),
            color: const Color(0xFFFCE6CD),
            child: Column(
              children: [
                Wrap(
                  children:[ Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          "ID: ${buyer.id.toString().padLeft(4, '0')} ${buyer.imeprezime}",
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Row(
                        children: const [
                          ImageIcon(
                            AssetImage("assets/papir.png"),
                            color: Colors.black,
                            size: 30,
                          ),
                          ImageIcon(
                            AssetImage("assets/papirolovka.png"),
                            color: Colors.black,
                            size: 30,
                          ),
                          ImageIcon(
                            AssetImage("assets/kanta.png"),
                            color: Colors.black,
                            size: 30,
                          ),
                          ImageIcon(
                            AssetImage("assets/vector.png"),
                            color: Colors.black,
                            size: 30,
                          ),
                        ],
                      ),
                    ],
                  ),]
                ),
                const SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Rok: 3 dana",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: const [
                        Text(
                          "Hitno",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(
                          Icons.warning_rounded,
                          color: Color.fromARGB(255, 212, 128, 0),
                          size: 39,
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Container(
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    border:
                        Border.all(color: Color.fromARGB(255, 145, 145, 145)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Za izradu",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          BuyersData(
            buyer: buyer,
            orderList: orderList,
          ),
          if (!isWeb)
            ExpansionTile(
              title: const Text(
                "Proizvodi",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              textColor: Colors.black,
              iconColor: const Color(0xFFF5A25D),
              children: [
                Divider(),
                OrderListCard(orderList: orderList),
              ],
            )
          else
            OrderListCard(orderList: orderList),
        ],
      ),
    );
  }
}
