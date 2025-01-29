import 'package:flutter/material.dart';
import 'package:hanami/orders/models/models.dart';

class NewProductsGrid extends StatelessWidget {
  final Product product;

  const NewProductsGrid({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(16),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisSpacing: 10,
        mainAxisSpacing: 0,
        crossAxisCount: 2,
        childAspectRatio: 1,
      ),
      itemCount: 4,
      itemBuilder: (context, index) {
        return FittedBox(
          child: Container(
            height: 250,
            width: 250,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network(
                    product.imageUrls[0],
                    fit: BoxFit.cover,
                  ),
                  Text(
                    product.ime,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "${(product.cena).toString()} RSD",
                    style: TextStyle(color: Colors.orange, fontSize: 20),
                  )
                ]),
          ),
        );
      },
    );
  }
}
