import 'package:hanami/orders/models/models.dart';
import 'package:flutter/material.dart';
import 'package:hanami/product_page/view/widgets/widgets.dart';

class ProductImagesSection extends StatelessWidget {
  final Product product;
  const ProductImagesSection({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isWideScreen = screenWidth < 750;

    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (!isWideScreen)
          Column(
            children: Thumbnails(),
          ),

        Flexible(
          child: Column(
            children: [
              ConstrainedBox(
                constraints: BoxConstraints(
                  maxWidth: 500,
                  maxHeight: 500,
                ),
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.grey.shade300),
                  ),
                  clipBehavior: Clip.hardEdge,
                  child: Image.network(
                    product.imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              if (isWideScreen)
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: Thumbnails(),
                  ),
                ),
            ],
          ),
        ),

        ProductInfoSection(product: product),
      ],
    );
  }

  List<Widget> Thumbnails() {
    return List.generate(
      4,
      (index) => Container(
        width: 70,
        height: 70,
        margin: const EdgeInsets.only(bottom: 10, right: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.grey.shade300),
        ),
        clipBehavior: Clip.hardEdge,
        child: Image.network(
          product.imageUrl,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
