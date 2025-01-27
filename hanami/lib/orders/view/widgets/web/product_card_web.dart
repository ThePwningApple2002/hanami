import 'package:flutter/material.dart';
import 'package:hanami/orders/models/models.dart';

class ProductCardWeb extends StatelessWidget {
  final Product product;
  final int kolicina;
  final String gravura;
  final double popust;
  final int index;
  final bool proizvodjac = true;

  const ProductCardWeb({
    super.key,
    required this.popust,
    required this.product,
    required this.kolicina,
    required this.gravura,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    List<String> dropdownItems = ["Option 1", "Option 2", "Option 3"];
    String selectedValue = dropdownItems[0];
    List<String> tipoviposiljke = ["Za izradu", "U izradi", "Poslato"];

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 10,
        children: [
          Container(
            width: 30,
            alignment: Alignment.center,
            child: Text(
              '$index.',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
          Row(
            spacing: 20,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all(
                    color: Colors.orange,
                    width: 2.0,
                  ),
                  image: DecorationImage(
                    image: NetworkImage(
                      product.imageUrl.isNotEmpty
                          ? product.imageUrl
                          : 'https://static.vecteezy.com/system/resources/thumbnails/036/324/708/small_2x/ai-generated-picture-of-a-tiger-walking-in-the-forest-photo.jpg',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Column(
                spacing: 10,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.ime,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    "Materijal: ${product.materijal}",
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    "Količina: $kolicina",
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    "popust: $popust%",
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    "Cena: ${product.cena.toStringAsFixed(2)} RSD",
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    "Ukupno: ${(product.cena * kolicina).toStringAsFixed(2)} RSD",
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [

                const Text(
                  "Gravura:",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Container(
                  constraints: BoxConstraints(maxWidth: 300),
                  width: double.infinity,
                  height: 150,
                  margin: const EdgeInsets.only(top: 4),
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: const Color(0xFFFCEBDC),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Center(
                    child: Text(
                      style: TextStyle(fontWeight: FontWeight.bold),
                      gravura.isNotEmpty ? gravura : "Nema gravure",
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
          proizvodjac
              ? Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 25,
                        width: 80,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: const Color.fromARGB(255, 90, 90, 90),
                            width: 0.2,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(
                            child: Text(
                          tipoviposiljke[0],
                          style: TextStyle(fontWeight: FontWeight.bold,
                          color: Colors.black),
                        )),
                      ),
                    ),
                    ImageIcon(AssetImage("assets/papirolovka.png")),
                    ImageIcon(AssetImage("assets/kanta.png"))
                  ],
                )
              : DropdownButton<String>(
                  value: selectedValue,
                  onChanged: (String? newValue) {},
                  items: dropdownItems
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
        ],
      ),
    );
  }
}
