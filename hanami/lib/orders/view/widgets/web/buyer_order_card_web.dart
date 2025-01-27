import 'package:flutter/material.dart';
import 'package:hanami/orders/view/widgets/order_list_card.dart';
import '../../../models/models.dart';
import '../buyers_data.dart';

class BuyerCardWeb extends StatefulWidget {
  final Buyer buyer;
  final OrderList orderList;

  const BuyerCardWeb({super.key, required this.buyer, required this.orderList});

  @override
  State<BuyerCardWeb> createState() => _BuyerCardWebState();
}

class _BuyerCardWebState extends State<BuyerCardWeb> {
  bool isExpanded = false;

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
          InkWell(
            onTap: () {
              setState(() {
                isExpanded = !isExpanded;
              });
            },
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
              color: const Color(0xFFFCE6CD),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Wrap(
                      spacing: 10,
                      runSpacing: 10,
                      alignment: WrapAlignment.start,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        Text(
                          "ID: ${widget.buyer.id.toString().padLeft(4, '0')} ",
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: 100,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              elevation: 0,
                              backgroundColor: Colors.white,
                              foregroundColor: Colors.black,
                              padding: const EdgeInsets.symmetric(vertical: 2),
                              side: const BorderSide(color: Colors.white),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            child: const Text(
                              "Za izradu",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Text(
                          "Ime kupca: ${widget.buyer.imeprezime}",
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: const [
                            Text(
                              "Rok: 3 dana",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 10),
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
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const ImageIcon(
                        AssetImage("assets/papir.png"),
                        color: Colors.black,
                        size: 20,
                      ),
                      const SizedBox(width: 8),
                      const ImageIcon(
                        AssetImage("assets/papirolovka.png"),
                        color: Colors.black,
                        size: 20,
                      ),
                      const SizedBox(width: 8),
                      const ImageIcon(
                        AssetImage("assets/kanta.png"),
                        color: Colors.black,
                        size: 20,
                      ),
                      const SizedBox(width: 8),
                      const ImageIcon(
                        AssetImage("assets/vector.png"),
                        color: Colors.black,
                        size: 20,
                      ),
                      const SizedBox(width: 8),
                      Icon(
                        isExpanded ? Icons.expand_less : Icons.expand_more,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          if (isExpanded) ...[
            BuyersData(
              buyer: widget.buyer,
              orderList: widget.orderList,
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
                  const Divider(),
                  OrderListCard(orderList: widget.orderList),
                ],
              )
            else
              OrderListCard(orderList: widget.orderList),
          ],
        ],
      ),
    );
  }
}
