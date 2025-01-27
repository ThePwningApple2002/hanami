import 'package:flutter/material.dart';

class CustomExpansionTile extends StatefulWidget {
  @override
  _CustomExpansionTile createState() => _CustomExpansionTile();
}

class _CustomExpansionTile extends State<CustomExpansionTile> {
  String selectedValue = 'Option 1';
  List<String> items = ['Option 1', 'Option 2', 'Option 3', 'Option 4'];
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Container(
        height: 40,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(color: Color.fromARGB(255, 145, 145, 145)),
        ),
        child: DropdownButton<String>(
          value: selectedValue,
          isExpanded: true,
          icon: Container(),
          underline: Container(),
          onTap: () {
            setState(() {
              isExpanded = !isExpanded;
            });
          },
          selectedItemBuilder: (BuildContext context) {
            return items.map<Widget>((String item) {
              return Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      item,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    if (!isExpanded) ...[
                      SizedBox(width: 8),
                      ImageIcon(
                        AssetImage("assets/vector.png"),
                        size: 30,
                      ),
                    ],
                  ],
                ),
              );
            }).toList();
          },
          items: items.map((String item) {
            return DropdownMenuItem<String>(
              value: item,
              child: Center(
                child: Text(
                  item,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            );
          }).toList(),
          onChanged: (String? newValue) {
            setState(() {
              selectedValue = newValue!;
              isExpanded = false;
            });
          },
        ),
      ),
    );
  }
}
