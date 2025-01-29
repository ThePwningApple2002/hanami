import 'package:flutter/material.dart';
import 'package:hanami/orders/models/models.dart';
import 'package:hanami/product_page/view/widgets/widgets.dart';

class OtherProductsSection extends StatelessWidget {
  final Product product;

  const OtherProductsSection({Key? key, required this.product})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Ostali proizvodi proizvođača',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'Vidi ceo katalog',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        SizedBox(height: 20),
        SizedBox(
          width: double.infinity,
          child: GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
       
              crossAxisCount: (MediaQuery.of(context).size.width ~/ 250)
                  .clamp(2, 6), 
              crossAxisSpacing: 16, 
              mainAxisSpacing: 16,
              childAspectRatio: 0.65, 
            ),
            itemCount: 40,
            itemBuilder: (context, index) => ProductCardWeb(product: product),
          ),
        )
      ],
    );
  }
}
