import 'package:flutter/material.dart';
import 'package:hanami/shop/view/widgets/custom_dropdown.dart';

class FiltersMobile extends StatefulWidget {
  @override
  FiltersMobileState createState() => FiltersMobileState();
}

class FiltersMobileState extends State<FiltersMobile> {
  List<String> selectedIme = [];
  List<String> selectedMaterijal = [];
  List<String> selectedKategorija = [];
  List<String> selectedSort = [];
  List<String> selectedCenaSort = [];
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                width: double.infinity,
                child: ExpansionTile(
                  tilePadding: EdgeInsets.zero,
                  collapsedIconColor: Colors.transparent,
                  iconColor: Colors.transparent,
                  title: Container(
                    width: double.infinity,
                    height: 10,
                    decoration: BoxDecoration(
                      color: Colors.black,
                    ),
                  ),
                  children: [
                    Column(
                      spacing: 14,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          spacing: 20,
                          children: [
                            Flexible(
                                flex: 4,
                                child: Container(
                                  height: 45,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      color: Color(0xFFFCE6CD),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Ime kupca",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                      ImageIcon(AssetImage("assets/vector.png"))
                                    ],
                                  ),
                                )),
                            Flexible(
                                flex: 7,
                                child: Container(
                                  height: 45,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      color: Color(0xFFFCE6CD),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Center(
                                      child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0),
                                    child: Row(
                                      children: [
                                        ImageIcon(
                                            AssetImage("assets/search.png")),
                                        Text(
                                          "Ime kupca",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16),
                                        ),
                                      ],
                                    ),
                                  )),
                                )),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          spacing: 0,
                          children: [
                            SizedBox(
                              width: 120,
                              child: Text(
                                "Tip proizvoda:",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                            ),
                            Expanded(
                              child: CustomDropdown(
                                hint: 'Tip proizvoda',
                                selectedItems: selectedIme,
                                items: ['Kasike', 'Viljuske', 'Nozevi'],
                                onChanged: (items) =>
                                    setState(() => selectedIme = items),
                                isMultiSelect: true,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          spacing: 0,
                          children: [
                            SizedBox(
                              width: 120,
                              child: Text(
                                "Materijal:",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                            ),
                            Expanded(
                              child: CustomDropdown(
                                hint: 'Materijal',
                                selectedItems: selectedMaterijal,
                                items: ['Metal', 'Plastika', 'Drvo'],
                                onChanged: (items) =>
                                    setState(() => selectedMaterijal = items),
                                isMultiSelect: true,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          spacing: 0,
                          children: [
                            SizedBox(
                              width: 120,
                              child: Text(
                                "Kategorija:",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                            ),
                            Expanded(
                              child: CustomDropdown(
                                hint: 'Kategorija',
                                selectedItems: selectedKategorija,
                                items: ['Posudje', 'Tigrovi'],
                                onChanged: (items) =>
                                    setState(() => selectedKategorija = items),
                                isMultiSelect: true,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          spacing: 0,
                          children: [
                            SizedBox(
                              width: 120,
                              child: Text(
                                "Ime proizvoda:",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                            ),
                            Expanded(
                              child: CustomDropdown(
                                hint: 'Ime proizvoda',
                                selectedItems: selectedSort,
                                items: ['A-Z', 'Z-A'],
                                onChanged: (items) =>
                                    setState(() => selectedSort = items),
                                isMultiSelect: false,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          spacing: 0,
                          children: [
                            SizedBox(
                              width: 120,
                              child: Text(
                                "Cena:",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                            ),
                            Expanded(
                              child: CustomDropdown(
                                hint: 'Cena ',
                                selectedItems: selectedCenaSort,
                                items: ['Rastuca', 'Opadajuca'],
                                onChanged: (items) =>
                                    setState(() => selectedCenaSort = items),
                                isMultiSelect: false,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          spacing: 10,
                          children: [
                            Flexible(
                                flex: 1,
                                child: Container(
                                  height: 30,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      color: Color(0xFFFCE6CD),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "ID",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                      ImageIcon(AssetImage("assets/vector.png"))
                                    ],
                                  ),
                                )),
                            Flexible(
                                flex: 1,
                                child: Container(
                                  height: 30,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      color: Color(0xFFFCE6CD),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Center(
                                      child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0),
                                    child: Row(
                                      children: [
                                        ImageIcon(
                                            AssetImage("assets/search.png")),
                                        Text(
                                          "Ime kupca",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16),
                                        ),
                                      ],
                                    ),
                                  )),
                                )),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    if (selectedIme.isNotEmpty ||
                        selectedMaterijal.isNotEmpty ||
                        selectedKategorija.isNotEmpty ||
                        selectedSort.isNotEmpty ||
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
                                    label: Text(
                                      "Tip: $item",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    deleteIcon: Icon(Icons.close, size: 16),
                                    onDeleted: () => setState(() {
                                      selectedIme.remove(item);
                                    }),
                                    backgroundColor: Color(0xFFFAEEE0),
                                  )),
                              ...selectedMaterijal.map((item) => Chip(
                                    label: Text(
                                      "Materijal: $item",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    deleteIcon: Icon(Icons.close, size: 16),
                                    onDeleted: () => setState(() {
                                      selectedMaterijal.remove(item);
                                    }),
                                    backgroundColor: Color(0xFFFAEEE0),
                                  )),
                              ...selectedKategorija.map((item) => Chip(
                                    label: Text(
                                      "Kategorija: $item",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    deleteIcon: Icon(Icons.close, size: 16),
                                    onDeleted: () => setState(() {
                                      selectedKategorija.remove(item);
                                    }),
                                    backgroundColor: Color(0xFFFAEEE0),
                                  )),
                              ...selectedSort.map((item) => Chip(
                                    label: Text(
                                      "Sortiranje: $item",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    deleteIcon: Icon(Icons.close, size: 16),
                                    onDeleted: () => setState(() {
                                      selectedSort.clear();
                                    }),
                                    backgroundColor: Color(0xFFFAEEE0),
                                  )),
                              ...selectedCenaSort.map((item) => Chip(
                                    label: Text(
                                      "Cena: $item",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
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
                ),
              ),
            ]));
  }
}
