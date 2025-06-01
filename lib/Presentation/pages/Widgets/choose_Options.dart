import 'package:flutter/material.dart';

import 'SquarePointer.dart';

class ChooseOptions extends StatefulWidget {
  // final String taka;
  // final String name;

  const ChooseOptions({super.key,
    // required this.taka,
    // required this.name
  });

  @override
  State<ChooseOptions> createState() => _ChooseOptionsState();
}

class _ChooseOptionsState extends State<ChooseOptions> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            SquarePointer(),
            SizedBox(width: 10),
            Text('Pesto Panner'),
          ],
        ),
        Row(
          children: [
            Text('৳50'),
            Checkbox(
              value: _isChecked,
              onChanged: (bool? newValue) {
                setState(() {
                  _isChecked = newValue!;
                });
              },
            ),
          ],
        ),
      ],
    );
  }
}
