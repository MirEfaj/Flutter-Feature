import 'package:flutter/material.dart';

class buttonCard extends StatelessWidget {
  final String cardText;
  final IconData ? leadIcon;
  final Color ? fontColor;
  final VoidCallback ? onTap;

  //final Size fontSize ;
  const buttonCard({
    super.key,
    required this.cardText,
    this.leadIcon,
    this.fontColor,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        height: 60,
        child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(leadIcon, size: 30,),
              SizedBox(width: 10,),
              Text(cardText, style: TextStyle(fontSize: 20, color: fontColor ?? Colors.black),)
            ],
          ),
        ),
      ),
    );
  }
}
