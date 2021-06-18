import 'package:flutter/material.dart';

class DropDown extends StatefulWidget {
  const DropDown({ Key? key }) : super(key: key);

  @override
  _DropDownState createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
 String valorDrop = 'Selecione';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: valorDrop,
       
      onChanged: (String? newValue) {
        setState(() {
          valorDrop = newValue!;
        });
      },
      items: <String>["One" ]
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}