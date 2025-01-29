import 'package:flutter/material.dart';
import 'package:hanami/orders/models/product.dart';
import 'package:hanami/product_page/view/widgets/widgets.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ProductCardMobile extends StatefulWidget {
  final Product product;

  const ProductCardMobile({super.key, required this.product});

  @override
  State<ProductCardMobile> createState() => ProductCardMobileState();
}

class ProductCardMobileState extends State<ProductCardMobile> {
  int _currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              CarouselSlider(
                options: CarouselOptions(
                  aspectRatio: 1,
                  viewportFraction: 1,
                  enableInfiniteScroll: false,
                  autoPlay: false,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _currentIndex = index + 1;
                    });
                  },
                ),
                items: widget.product.imageUrls.map((url) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Image.network(
                        url,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      );
                    },
                  );
                }).toList(),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                margin: EdgeInsets.only(bottom: 20, right: 20), // Added left margin
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  '$_currentIndex/${widget.product.imageUrls.length}',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.product.ime,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
                SizedBox(height: 14),
                Text(
                  'Proizvođač: M0001RS',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
                SizedBox(height: 14),
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
                    style: TextStyle(
                      color: Colors.orange,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                ),
                SizedBox(height: 14),
                Text(
                  'Cena: ${widget.product.cena} RSD',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
                SizedBox(height: 14),
                SizedBox(
                  height: 70,
                  child: ElevatedButton(
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
                      style: TextStyle(
                        color: Colors.orange,
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 14),
                Container(
                  height: 70,
                  child: ElevatedButton(
                    
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
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          NewProductsGrid(product: widget.product),
        ],
      ),
    );
  }
}
