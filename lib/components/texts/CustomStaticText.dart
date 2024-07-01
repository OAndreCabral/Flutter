import 'package:flutter/material.dart';

class CustomStaticText extends StatelessWidget {

  final TextAlign selectTextAlign;
  final String firstText;
  final Color firstTextColor;
  final double firstTextSize;
  final FontWeight firstTextFontWeight;

  const CustomStaticText({
    super.key,
    required this.selectTextAlign,
    required this.firstText,
    required this.firstTextColor,
    required this.firstTextSize,
    required this.firstTextFontWeight,
  });


  @override
  Widget build(BuildContext context) {

    return RichText(
      textAlign: selectTextAlign,
      text: TextSpan(
          children: [
            TextSpan(
                text: firstText,
                style: TextStyle(
                  color: firstTextColor,
                  fontSize: MediaQuery.of(context).size.width * firstTextSize,
                  fontWeight: firstTextFontWeight,
                )
            ),
          ]
      ),
    );
  }
}
