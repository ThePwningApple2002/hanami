import 'package:flutter/material.dart';
import 'package:hanami/orders/models/models.dart';

class ProductCardWeb extends StatelessWidget {
  final Product product;

  const ProductCardWeb({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFFAEEE0),
        border: Border.all(color: Colors.orange),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(  
            flex: 4, 
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(12),
                ),
              ),
              clipBehavior: Clip.hardEdge,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: AspectRatio(
                  aspectRatio: 16 / 9, 
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: FittedBox(
                      fit: BoxFit.cover,
                      child: Image.network(
                        product.imageUrl,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(  
            flex: 6, 
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14.0),
              child: Column(
                spacing: 5,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.ime,
                    style: TextStyle(fontWeight: FontWeight.bold),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    'Proizvođač: M0001RS',
                    style: TextStyle(fontWeight: FontWeight.bold),
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
                      style: TextStyle(color: Colors.orange),
                    ),
                  ),
                  Text(
                    'Cena: ${product.cena} RSD',
                    style: TextStyle(fontWeight: FontWeight.bold),
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
                      style: TextStyle(color: Colors.orange),
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
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                          
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
