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
          const SizedBox(width: 10),
          Row(
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
                      product.imageUrls.isNotEmpty
                          ? product.imageUrls[0]
                          : 'https://placeholder.com/default-image.jpg',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.ime,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Materijal: ${product.materijal}",
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Količina: $kolicina",
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Popust: $popust%",
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Cena: ${product.cena.toStringAsFixed(2)} RSD",
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 10),
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
          const SizedBox(width: 20),
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
                  constraints: const BoxConstraints(maxWidth: 300),
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
                      gravura.isNotEmpty ? gravura : "Nema gravure",
                      textAlign: TextAlign.center,
                      style: const TextStyle(fontWeight: FontWeight.bold),
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
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const ImageIcon(AssetImage("assets/papirolovka.png")),
                    const ImageIcon(AssetImage("assets/kanta.png")),
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
