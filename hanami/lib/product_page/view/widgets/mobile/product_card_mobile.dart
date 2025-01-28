import 'package:flutter/material.dart';

import 'package:hanami/orders/models/product.dart';



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
         
        mainAxisSpacing: 16,
        crossAxisCount: 2,
        childAspectRatio: 1,
      ),
      itemCount: 4, // Change this to the number of products you want to display
      itemBuilder: (context, index) {
        return FittedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
               Image.network(
              product.imageUrl,
              fit: BoxFit.cover,
            
            
            ),
            Text(product.ime, style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),),
            Text("${(product.cena).toString()} RSD", style: TextStyle(color: Colors.orange, fontSize: 40),)
            
            ]
          ),
        );
      },
    );
  }
}


class ProductCardMobile extends StatelessWidget {
  final Product product;

  const ProductCardMobile({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
         
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: Image.network(
              product.imageUrl,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              spacing: 14,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.ime,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
                Text(
                  'Proizvođač: M0001RS',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.zero,
                    minimumSize: Size.zero,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  child: Text(
                    'Pogledaj proizvod',
                    style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                ),
                Text(
                  'Cena: ${product.cena} RSD',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFFAEEE0),
                    minimumSize: Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.orange),
                    ),
                  ),
                  child: Text(
                    'Pogledaj proizvod',
                    style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    minimumSize: Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    'Dodaj u prodavnicu',
                    style: TextStyle(color: Colors.black, fontWeight:  FontWeight.bold, fontSize: 24),
                  ),
                ),
              ],
            ),
          ),
   
        NewProductsGrid(product: product)
        ],
      ),
    );
  }
}
