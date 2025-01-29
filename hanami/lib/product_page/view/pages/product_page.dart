import 'package:flutter/material.dart';
import 'package:hanami/orders/models/product.dart';
import 'package:hanami/product_page/view/widgets/mobile/product_card_mobile.dart';
import 'package:hanami/product_page/view/widgets/widgets.dart';

class ProductDetailPage extends StatelessWidget {
  final Product product;

  const ProductDetailPage({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isWeb = MediaQuery.of(context).size.width > 750;
    return Scaffold(
      body: isWeb ? SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'O proizvodu',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              ProductImagesSection(product: product),
              SizedBox(height: 40),
              OtherProductsSection(product: product),
            ],
          )
           
        ),
      ) : ProductCardMobile(product: product,)
    );
  }
}
