import 'package:flutter/material.dart';
import 'package:hanami/orders/models/models.dart';
import 'package:hanami/shop/view/widgets/mobile/filters_mobile.dart';
import 'package:hanami/shop/view/widgets/web/filters_web.dart';
import 'package:hanami/shop/view/widgets/web/shop_product_card_web.dart';

class ShopPage extends StatelessWidget {
  final Product product;

  const ShopPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    bool isWeb = MediaQuery.of(context).size.width > 750;
    return 

    isWeb ? 
    Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            spacing: 10,
            children: [
              FiltersWeb(),
              const SizedBox(height: 16),
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: (MediaQuery.of(context).size.width ~/ 250)
                      .clamp(2, 6),
                  crossAxisSpacing: 0,
                  mainAxisSpacing: 16,
                  childAspectRatio: 0.65,
                ),
                itemCount: 40,
                itemBuilder: (context, index) => ShopProductCard(product: product),
              ),
            ],
          ),
        ),
      ),
    )
    
    :
    Scaffold(
      body: SingleChildScrollView(
        child: FiltersMobile(),
      ),
    );

  }
}
