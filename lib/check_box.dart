import 'package:flutter/material.dart';

class CheckBoxWidget extends StatefulWidget {
  const CheckBoxWidget({Key? key}) : super(key: key);

  @override
  State<CheckBoxWidget> createState() => _CheckBoxWidgetState();
}

class _CheckBoxWidgetState extends State<CheckBoxWidget> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Theme(
        data: Theme.of(context).copyWith(unselectedWidgetColor: Colors.red),
        child: CheckboxListTile(
          controlAffinity: ListTileControlAffinity.leading,
          title: Text("CheckBox"),
          subtitle: Text("Subtitle"),
          value: isChecked,
          onChanged: (value) {
            setState(() {
              isChecked=value!;
            });
          },
          activeColor: Colors.red,
          checkColor: Colors.white,
        ),
      ),
    ));
  }
}
