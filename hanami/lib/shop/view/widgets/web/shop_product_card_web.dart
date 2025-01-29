import 'package:flutter/material.dart';
import 'package:hanami/orders/models/models.dart';

class ShopProductCard extends StatelessWidget {
  final Product product;

  ShopProductCard({required this.product});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: 300,
        maxHeight: 500,
      ),
      child: FittedBox(
        fit: BoxFit.contain,
        child: Container(
          width: 200,
          height: 350,
          decoration: BoxDecoration(
            color: Color(0xFFFAEEE0),
            border: Border.all(color: Colors.orange),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            children: [
              Container(
                height: 200,
                padding: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 5 ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network(
                    product.imageUrls.isNotEmpty
                        ? product.imageUrls[0]
                        : 'https://placeholder.com/default-image.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      product.ime,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 16,
                      ),
                      maxLines: 2,
                    ),
                    Padding(
                      padding: EdgeInsets.zero,
                      child: TextButton(
                        onPressed: () {
                          // Add your action here
                        },
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.symmetric(vertical: 12),
                          minimumSize: Size.zero,
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                        child: Text(
                          'Pogledaj proizvod',
                          style: TextStyle(
                            color: Colors.orange,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      'Cena: ${product.cena} RSD',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(right: 4),
                            child: SizedBox(
                              height: 45,
                               // Increased button height
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xFFFAEEE0),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    side: BorderSide(color: Colors.orange),
                                  ),
                                  padding: EdgeInsets.symmetric(
                                      vertical: 0), // Added padding
                                ),
                                child: FittedBox(
                                  fit: BoxFit.scaleDown,
                                  child: Text(
                                    'Izbriši',
                                    style: TextStyle(
                                      color: Colors.orange,
                                      fontSize: 14, // Adjusted font size
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(left: 4),
                            child: SizedBox(
                              height: 45, 
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.orange,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  padding: EdgeInsets.symmetric(
                                      vertical: 8), 
                                ),
                                child: FittedBox(
                                  fit: BoxFit.scaleDown,
                                  child: Text(
                                    'Izmeni',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14, 
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
