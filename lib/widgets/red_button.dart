import 'package:flutter/material.dart';

class RedButton extends StatelessWidget {
  final String redButtonText;
  final void Function() onPressed;
  const RedButton({
    super.key,
    required this.redButtonText,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xFFEE403D),
        foregroundColor: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 26, vertical: 18),
      ),
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            redButtonText,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
          Icon(Icons.arrow_forward, color: Colors.white, size: 25),
        ],
      ),
    );
  }
}
