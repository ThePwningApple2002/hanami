// filters.dart
import 'package:flutter/material.dart';
import '../custom_dropdown.dart';

class FiltersWeb extends StatefulWidget {
  @override
  FiltersWebState createState() => FiltersWebState();
}
class FiltersWebState extends State<FiltersWeb> {
  List<String> selectedIme = [];
  List<String> selectedMaterijal = [];
  List<String> selectedKategorija = [];
  List<String> selectedSort = [];
  List<String> selectedCenaSort = [];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Prodavnica',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 20),
        Row(
          spacing: 16,
     
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomDropdown(
              hint: 'Tip proizvoda',
              selectedItems: selectedIme,
              items: ['Kasike', 'Viljuske', 'Nozevi'],
              onChanged: (items) => setState(() => selectedIme = items),
              isMultiSelect: true,
            ),
            CustomDropdown(
              hint: 'Materijal',
              selectedItems: selectedMaterijal,
              items: ['Metal', 'Plastika', 'Drvo'],
              onChanged: (items) => setState(() => selectedMaterijal = items),
              isMultiSelect: true,
            ),
            CustomDropdown(
              hint: 'Kategorija',
              selectedItems: selectedKategorija,
              items: ['Posudje', 'Tigrovi'],
              onChanged: (items) => setState(() => selectedKategorija = items),
              isMultiSelect: true,
            ),
          ],
        ),
        SizedBox(height: 16),
        Row(
          spacing: 16,
          mainAxisAlignment:  MainAxisAlignment.start,
          children: [
            CustomDropdown(
              hint: 'Ime proizvoda',
              selectedItems: selectedSort,
              items: ['A-Z', 'Z-A'],
              onChanged: (items) => setState(() => selectedSort = items),
              isMultiSelect: false,
            ),
            CustomDropdown(
              hint: 'Cena ',
              selectedItems: selectedCenaSort,
              items: ['Rastuca', 'Opadajuca'],
              onChanged: (items) => setState(() => selectedCenaSort = items),
              isMultiSelect: false,
            ),
          ],
        ),
        SizedBox(height: 16),
        if (selectedIme.isNotEmpty || selectedMaterijal.isNotEmpty || 
            selectedKategorija.isNotEmpty || selectedSort.isNotEmpty || 
            selectedCenaSort.isNotEmpty)
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Aktivni filteri:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 8),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  ...selectedIme.map((item) => Chip(
                    label: Text("Tip: $item", style: TextStyle(fontWeight: FontWeight.bold),),
                    deleteIcon: Icon(Icons.close, size: 16),
                    onDeleted: () => setState(() {
                      selectedIme.remove(item);
                    }),
                    backgroundColor: Color(0xFFFAEEE0),
                  )),
                  ...selectedMaterijal.map((item) => Chip(
                    label: Text("Materijal: $item", style: TextStyle(fontWeight: FontWeight.bold),),
                    deleteIcon: Icon(Icons.close, size: 16),
                    onDeleted: () => setState(() {
                      selectedMaterijal.remove(item);
                    }),
                    backgroundColor: Color(0xFFFAEEE0),
                  )),
                  ...selectedKategorija.map((item) => Chip(
                    label: Text("Kategorija: $item", style: TextStyle(fontWeight: FontWeight.bold),),
                    deleteIcon: Icon(Icons.close, size: 16),
                    onDeleted: () => setState(() {
                      selectedKategorija.remove(item);
                    }),
                    backgroundColor: Color(0xFFFAEEE0),
                  )),
                  ...selectedSort.map((item) => Chip(
                    label: Text("Sortiranje: $item", style: TextStyle(fontWeight: FontWeight.bold),),
                    deleteIcon: Icon(Icons.close, size: 16),
                    onDeleted: () => setState(() {
                      selectedSort.clear();
                    }),
                    backgroundColor: Color(0xFFFAEEE0),
                  )),
                  ...selectedCenaSort.map((item) => Chip(
                    label: Text("Cena: $item", style: TextStyle(fontWeight: FontWeight.bold),),
                    deleteIcon: Icon(Icons.close, size: 16),
                    onDeleted: () => setState(() {
                      selectedCenaSort.clear();
                    }),
                    backgroundColor: Color(0xFFFAEEE0),
                  )),
                ],
              ),
            ],
          ),
      ],
    );
  }
}
