import 'package:flutter/material.dart';

class SquarePointer extends StatelessWidget {


  const SquarePointer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: Colors.green, // Border color
          width: 2.0, // Border width
        ),
        borderRadius: BorderRadius.circular(0), // Border radius for rounded corners
      ),
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: CircleAvatar(
          radius: 5,
          backgroundColor: Colors.green,
        ),
      ),
    );
  }
}