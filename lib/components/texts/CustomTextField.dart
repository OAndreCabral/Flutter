import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {

  final String text;
  final double valueBorder;


  const CustomTextField({
    super.key,
    required this.text,
    required this.valueBorder,

  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return TextField(
      decoration: InputDecoration(
        labelText: text,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(valueBorder))
        ),
      ),
    );
  }
}
