import 'package:flutter/material.dart';

class CustomDropdown extends StatefulWidget {
  final String hint;
  final List<String> selectedItems;
  final List<String> items;
  final Function(List<String>) onChanged;
  final bool isMultiSelect;

  const CustomDropdown({
    Key? key,
    required this.hint,
    required this.selectedItems,
    required this.items,
    required this.onChanged,
    this.isMultiSelect = true,
  }) : super(key: key);

  @override
  State<CustomDropdown> createState() => CustomDropdownState();
}

class CustomDropdownState extends State<CustomDropdown> {
  bool isOpen = false;
  GlobalKey actionKey = LabeledGlobalKey("button_icon");

  void handleSelection(String item) {
    List<String> newSelectedItems = List.from(widget.selectedItems);

    if (widget.isMultiSelect) {
      if (widget.selectedItems.contains(item)) {
        newSelectedItems.remove(item);
      } else {
        newSelectedItems.add(item);
      }
    } else {
      newSelectedItems = [item];
      setState(() {
        isOpen = false;
      });
    }

    widget.onChanged(newSelectedItems);
  }

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xFFFAEEE0),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  isOpen = !isOpen;
                });
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Row(
                  
                  
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(widget.hint, style: TextStyle(fontWeight: FontWeight.bold,  fontSize: 16)),
                    ImageIcon(isOpen ? AssetImage("assets/vector.png") : AssetImage("assets/vector.png")),
                  ],
                ),
              ),
            ),
            AnimatedCrossFade(
              duration: Duration(milliseconds: 150),
              firstChild: SizedBox.shrink(), 
              secondChild: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: widget.items.map((String item) {
                  return InkWell(
                    onTap: () => handleSelection(item),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          if (widget.isMultiSelect)
                            Checkbox(
                              value: widget.selectedItems.contains(item),
                              onChanged: (bool? checked) => handleSelection(item),
                            ),
                          if (!widget.isMultiSelect)
                            Radio<String>(
                              value: item,
                              groupValue: widget.selectedItems.isNotEmpty
                                  ? widget.selectedItems.first
                                  : null,
                              onChanged: (String? value) {
                                if (value != null) handleSelection(value);
                              },
                            ),
                          Text(item, style: TextStyle( fontSize: 16)),
                        ],
                      ),
                    ),
                  );
                }).toList(),
              ),
              crossFadeState: isOpen ? CrossFadeState.showSecond : CrossFadeState.showFirst,
            ),
          ],
        ),
      ),
    );
  }
}
