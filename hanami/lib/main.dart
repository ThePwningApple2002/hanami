import 'package:flutter/material.dart';
import 'package:hanami/orders/view/pages/orders_page.dart';
import 'package:hanami/product_page/view/pages/product_page.dart';
import 'package:hanami/orders/repositories/temp_data.dart';
import 'package:hanami/orders/models/models.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Helper method to get a sample product
  Product getSampleProduct() {
    final rawData = TempData.getDummyData();
    final orderListsJson = rawData['orderLists'] as List<dynamic>? ?? [];
    
    // Get the first product from the data
    if (orderListsJson.isNotEmpty) {
      final orderList = OrderList.fromJson(orderListsJson.first);
      if (orderList.listaporudzbina.isNotEmpty && 
          orderList.listaporudzbina.first.listaproizvoda.isNotEmpty) {
        return orderList.listaporudzbina.first.listaproizvoda.first;
      }
    }
    
    // Return a default product if no data is available
    return Product(
      ime: 'Sample Product',
      materijal: 'Sample Material',
      cena: 0.0,
      imageUrl: 'https://placeholder.com/image.jpg'
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProductDetailPage(product: getSampleProduct()),
    );
  }
}
