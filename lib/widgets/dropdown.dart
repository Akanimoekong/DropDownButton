import 'package:flutter/material.dart';

class MyDrop extends StatefulWidget {
  const MyDrop({Key? key}) : super(key: key);

  @override
  State<MyDrop> createState() => _MyDropState();
}

class _MyDropState extends State<MyDrop> {
  // Initial Selected Value
  String dropdownvalue = 'Item 1';

  // List of items in our dropdown menu
  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
        value: dropdownvalue,
        icon: Icon(Icons.arrow_drop_down_circle),
        items: items.map((String items) {
          return DropdownMenuItem(
            value: items,
            child: Text(items),
          );
        }).toList(),
        onChanged: (String? newValue) {
          setState(() {
            dropdownvalue = newValue!;
          });
        });
  }
}
