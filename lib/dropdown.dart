import 'package:flutter/material.dart';

class DropDownWidget extends StatefulWidget {
  const DropDownWidget({Key? key}) : super(key: key);

  @override
  State<DropDownWidget> createState() => _DropDownWidgetState();
}

class _DropDownWidgetState extends State<DropDownWidget> {
  List<String> items = ["item1", "item2", "item3", "item4"];
  String selectedItem = "item1";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 240,
          child: DropdownButtonFormField<String>(
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(width: 3,color: Colors.blue)
              )
            ),
            value: selectedItem,
            items: items
                .map((item) => DropdownMenuItem<String>(
                      child: Text(
                        item,
                        style: TextStyle(fontSize: 24),
                      ),
                      value: item,
                    ))
                .toList(),
            onChanged: (value) {
              setState( (){ selectedItem= value!;});
            },
          ),
        ),
      ),
    );
  }
}
