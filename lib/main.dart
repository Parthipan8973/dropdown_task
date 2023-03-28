import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DropDown(),
    );
  }
}

class DropDown extends StatefulWidget {
  const DropDown({Key? key}) : super(key: key);

  @override
  State<DropDown> createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  List<String> items = [
    "Item 1",
    "Item 2",
    "Item 3",
    "Item 4",
  ];
  String dropdownvalue = "Item 1";

  @override
  Widget build(BuildContext context) {
    List<DropdownMenuItem<String>> menuItems = [];

    for (int i = 0; i < items.length; i++) {
      DropdownMenuItem<String> item = DropdownMenuItem(
        value: items[i],
        child: Text(
          items[i],
        ),
      );
      menuItems.add(item);
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Heading'),
      ),
      body: Center(
        child: DropdownButton<String>(
          items: menuItems,
          value: dropdownvalue,
          onChanged: (String? data) {
            dropdownvalue = data!;

            setState(() {});
          },
        ),
      ),
    );
  }
}
