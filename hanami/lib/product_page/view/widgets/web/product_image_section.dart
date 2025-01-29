  import 'package:hanami/orders/models/models.dart';
  import 'package:flutter/material.dart';
  import 'package:hanami/product_page/view/widgets/widgets.dart';

  class ProductImagesSection extends StatefulWidget {
    final Product product;
    const ProductImagesSection({Key? key, required this.product}) : super(key: key);

    @override
    State<ProductImagesSection> createState() => _ProductImagesSectionState();
  }

  class _ProductImagesSectionState extends State<ProductImagesSection> {
    int selectedImageIndex = 0;

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
              children: buildThumbnails(),
            ),

          Flexible(
            child: Column(
              children: [
                ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth: 500,
                    maxHeight: 500,
                  ),
                  child: AspectRatio(
                    aspectRatio: 4/3,
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.grey.shade300),
                      ),
                      clipBehavior: Clip.hardEdge,
                      child: Image.network(
                        widget.product.imageUrls[selectedImageIndex],
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                if (isWideScreen)
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: buildThumbnails(),
                    ),
                  ),
              ],
            ),
          ),

          ProductInfoSection(product: widget.product),
        ],
      );
    }

    List<Widget> buildThumbnails() {
      return List.generate(
        widget.product.imageUrls.length,
        (index) => GestureDetector(
          onTap: () {
            setState(() {
              selectedImageIndex = index;
            });
          },
          child: Container(
            width: 70,
            height: 70,
            margin: const EdgeInsets.only(bottom: 10, right: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: selectedImageIndex == index 
                    ? Colors.orange 
                    : Colors.grey.shade300,
                width: selectedImageIndex == index ? 2 : 1,
              ),
            ),
            clipBehavior: Clip.hardEdge,
            child: Image.network(
              widget.product.imageUrls[index],
              fit: BoxFit.cover,
            ),
          ),
        ),
      );
    }
  }
