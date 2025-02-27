import 'package:flutter/material.dart';
import '../../../../orders/models/models.dart';

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
            product.ime, // Using the product name from the model
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
          Text(
            'Cena izrade: ${product.cena} RSD',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold
           )),
       
          Text(
            'Materijali: ${product.materijal}', // Using the material from the model
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold
           )),
   
          Row(
            children: List.generate(
              product.imageUrls.length > 4 ? 4 : product.imageUrls.length, // Limit to 4 images
              (index) => Container(
                width: 40,
                height: 40,
                margin: EdgeInsets.only(right: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.grey.shade300),
                ),
                clipBehavior: Clip.hardEdge,
                child: Image.network(
                  product.imageUrls[index], // Using images from the imageUrls list
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
                borderRadius: BorderRadius.circular(10),
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
