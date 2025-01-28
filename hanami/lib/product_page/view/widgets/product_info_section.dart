
import 'package:flutter/material.dart';

import '../../../orders/models/models.dart';

class ProductInfoSection extends StatelessWidget {
  final Product product;

  const ProductInfoSection({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: Column(
        spacing: 16,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Text(
            'Naziv proizvoda',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
         
           Text(
            'Proizvođač: M0012RS',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold
           ),),
          Text('Cena izrade: ${product.cena} RSD',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold
           )),
       
           Text('Materijali:',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold
           )),
   
          Row(
            children: List.generate(
              4,
              (index) => Container(
                width: 40,
                height: 40,
                margin:  EdgeInsets.only(right: 8),
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
            ),
          ),

          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange,
              minimumSize: const Size(double.infinity, 50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10  ),
              ),
            ),
            child: const Text(
              'Dodaj proizvod',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}