import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Widget text;
  final Color backgroundColor;
  final double borderSize;

  const CustomButton({
    super.key,
    required this.text,
    required this.backgroundColor,
    required this.borderSize,

  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(backgroundColor),
          shape: WidgetStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderSize)))
      ),
      child: text,
    );
  }
}