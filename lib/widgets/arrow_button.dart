import 'package:flutter/material.dart';

class ArrowButton extends StatefulWidget {
  final Icon arrowButtonIcon;
  final Function(String) onClick;
  final String arrowDirection;
  const ArrowButton({
    super.key,
    required this.arrowButtonIcon,
    required this.onClick,
    required this.arrowDirection,
  });

  @override
  State<ArrowButton> createState() => _ArrowButtonState();
}

class _ArrowButtonState extends State<ArrowButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onClick(widget.arrowDirection);
      },
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(30),
        ),
        child: widget.arrowButtonIcon,
      ),
    );
  }
}