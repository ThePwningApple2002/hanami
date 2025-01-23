import 'package:flutter/material.dart';
import 'package:hanami/orders/models/models.dart';

class CustomAppbar extends StatelessWidget {
  // final Seller prodavac;

  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        width: double.infinity,
        height: 200,
        decoration: BoxDecoration(
            color: Color(0xFFFCE6CD),
            border: Border(
                bottom: BorderSide(
              color: const Color.fromARGB(255, 153, 153, 153),
              width: 1,
            ))),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "ID: 0001",
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                  Text(
                    "Aleksandra Aleksandrovic",
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                  Row(
                    children: [
                      ImageIcon(AssetImage("assets/papir.png")),
                      ImageIcon(AssetImage("assets/papirolovka.png")),
                      ImageIcon(AssetImage("assets/kanta.png")),
                      ImageIcon(AssetImage("assets/vector.png")),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Rok: 3 dana",
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
                Row(
                  children: [
                    Text(
                      "Hitno",
                      style: TextStyle(fontWeight: FontWeight.w700),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Image.asset("assets/vazno.png"),
                    ),
                  ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        elevation: 1,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5))),
                    onPressed: () {},
                    child: Text(
                      "Za izradu",
                      style: TextStyle(color: Colors.black),
                    )),
              ),
            )
          ],
        ),
      ),
      //Text(prodavac.imeprezime)
    ]);
  }
}
