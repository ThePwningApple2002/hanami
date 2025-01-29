import 'package:flutter/material.dart';
import 'package:hanami/product_page/view/pages/product_page.dart';
import 'package:hanami/orders/repositories/temp_data.dart';
import 'package:hanami/orders/models/models.dart';
import 'package:hanami/shop/view/pages/shop_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Product getSampleProduct() {
    final rawData = TempData.getDummyData();
    final orderListsJson = rawData['orderLists'] as List<dynamic>? ?? [];
    

    if (orderListsJson.isNotEmpty) {
      final orderList = OrderList.fromJson(orderListsJson.first);
      if (orderList.listaporudzbina.isNotEmpty && 
          orderList.listaporudzbina.first.listaproizvoda.isNotEmpty) {
        return orderList.listaporudzbina.first.listaproizvoda.first;
      }
    }

    return Product(
      ime: 'Sample Product',
      materijal: 'Sample Material',
      cena: 0.0,
      imageUrls: [
        'https://placeholder.com/image1.jpg',
        'https://placeholder.com/image2.jpg',
        'https://placeholder.com/image3.jpg',
        'https://placeholder.com/image4.jpg',
      ]
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: ShopPage(product: getSampleProduct()),
    );
  }
}
