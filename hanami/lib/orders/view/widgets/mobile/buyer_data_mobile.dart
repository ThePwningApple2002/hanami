import 'package:flutter/material.dart';
import 'package:hanami/orders/models/models.dart';

class BuyerDataMobile extends StatelessWidget {
  final Buyer buyer;
  final OrderList orderList;
  const BuyerDataMobile(
      {super.key, required this.buyer, required this.orderList});
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
        childrenPadding: EdgeInsets.symmetric(horizontal: 18),
        title: Text(
          "Podaci kupca",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        textColor: Colors.black,
        iconColor: Color(0xFFF5A25D),
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Column(
              spacing: 3,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Ime i prezime: ${buyer.imeprezime}",
                  style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Adresa: ${buyer.adresa}",
                  style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Grad: ${buyer.grad}",
                  style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Telefon: ${buyer.telefon}",
                  style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Email: ${buyer.email}",
                  style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                Divider(
                  thickness: 1,
                ),
                Text(
                  "Datum kreiranja: ${orderList.datumKreiranja.day}.${orderList.datumKreiranja.month}.${orderList.datumKreiranja.year}",
                  style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Datum isporuke: ${orderList.datumIsporuke.day}.${orderList.datumIsporuke.month}.${orderList.datumIsporuke.year}",
                  style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Ne slati pre: ${orderList.neSlatiPre.day}.${orderList.neSlatiPre.month}.${orderList.neSlatiPre.year}",
                  style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Nacin placanja: ${orderList.nacinPlacanja}",
                  style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Email: ${buyer.email}",
                  style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                Divider(),
                Text(
                  "Pol: ${buyer.pol}",
                  style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Kanal: ${buyer.kanal}",
                  style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Prodavac: S214123",
                  style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ]);
  }
}
