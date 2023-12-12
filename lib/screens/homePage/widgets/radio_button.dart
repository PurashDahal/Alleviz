import 'package:flutter/material.dart';

class TwoRadioButtonsInRow extends StatefulWidget {
  @override
  _TwoRadioButtonsInRowState createState() => _TwoRadioButtonsInRowState();
}

class _TwoRadioButtonsInRowState extends State<TwoRadioButtonsInRow> {
  int selectedValue = 1; // Initial value for the selected radio button

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Radio(
          value: 1,
          groupValue: selectedValue,
          onChanged: (value) {
            setState(() {
              selectedValue = value as int;
            });
          },
          visualDensity: VisualDensity.compact,
        ),
        Text('Male'),
        Radio(
          value: 2,
          groupValue: selectedValue,
          onChanged: (value) {
            setState(() {
              selectedValue = value as int;
            });
          },
          visualDensity: VisualDensity.compact,
        ),
        Text('Female'),
      ],
    );
  }
}
