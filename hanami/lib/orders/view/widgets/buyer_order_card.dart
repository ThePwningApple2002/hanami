import 'package:flutter/material.dart';
import 'package:hanami/orders/models/models.dart';
import 'package:hanami/orders/view/widgets/widgets.dart';

class BuyerCard extends StatelessWidget {
  final Buyer buyer;

  const BuyerCard({super.key, required this.buyer});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: const BorderSide(color: Color(0xFFF5A25D)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Top Yellow Header Section
          Container(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
            color: const Color(0xFFFCE6CD),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "ID: 0001   ${buyer.imeprezime}",
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 12),
                          Text(
                            "Rok: 3 dana",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: const Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            ImageIcon(
                              AssetImage("assets/papir.png"),
                              color: const Color.fromARGB(255, 0, 0, 0),
                              size: 30,
                            ),
                            ImageIcon(
                              AssetImage("assets/papirolovka.png"),
                              color: const Color.fromARGB(255, 0, 0, 0),
                              size: 30,
                            ),
                            ImageIcon(
                              AssetImage("assets/kanta.png"),
                              color: const Color.fromARGB(255, 0, 0, 0),
                              size: 30,
                            ),
                            ImageIcon(
                              AssetImage("assets/vector.png"),
                              color: const Color.fromARGB(255, 0, 0, 0),
                              size: 30,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "Hitno",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            SizedBox(width: 4),
                            Icon(
                              Icons.warning_rounded,
                              color: const Color.fromARGB(255, 212, 128, 0),
                              size: 40,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  width: double
                      .infinity, // Stretches the button to fill parent width
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      padding: const EdgeInsets.symmetric(
                          vertical: 16), // Adjust button height
                      side: const BorderSide(color: Colors.white),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
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
              ],
            ),
          ),

          // Button for "Za izradu"

          // "Podaci Kupca" Dropdown
          ExpansionTile(
            title: const Text(
              "Podaci kupca",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            textColor: Colors.black,
            iconColor: const Color(0xFFF5A25D),
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Text(
                  "Adresa: ${buyer.adresa}\n"
                  "Grad: ${buyer.grad}\n"
                  "Telefon: ${buyer.telefon}\n"
                  "Email: ${buyer.email}",
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),

          // "Proizvodi" (Products)
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
              // Use OrderListCard to Render Orders and Their Products
              ...buyer.orderLists.map((orderList) {
                return OrderListCard(orderList: orderList);
              }).toList(),
            ],
          ),
        ],
      ),
    );
  }
}
