import 'package:flutter/material.dart';

class CustomDoubleStaticText extends StatelessWidget {

  final TextAlign selectTextAlign;

  final String firstText;
  final double firstTextSize;
  final Color firstTextColor;
  final FontWeight firstTextFontWeight;

  final String secondText;
  final Color secondTextColor;
  final double secondTextSize;
  final FontWeight secondfontWeightText;

  const CustomDoubleStaticText({
    super.key,
    required this.selectTextAlign,

    required this.firstText,
    required this.firstTextColor,
    required this.firstTextSize,
    required this.firstTextFontWeight,

    required this.secondText,
    required this.secondTextColor,
    required this.secondTextSize,
    required this.secondfontWeightText,

  });

  @override
  Widget build(BuildContext context) {

    var firstTextScreenWidth = MediaQuery.of(context).size.width * firstTextSize;
    var secondTextScreenWidth = MediaQuery.of(context).size.width * secondTextSize;

    return Column(
      children: [
        RichText(
          textAlign: selectTextAlign,
          text: TextSpan(
            children: [
              TextSpan(
                text: firstText,
                style: TextStyle(
                  color: firstTextColor,
                  fontSize: firstTextScreenWidth,
                  fontWeight: firstTextFontWeight,
                )
              ),
              TextSpan(
                  text: secondText,
                  style: TextStyle(
                    color: secondTextColor,
                    fontSize: secondTextScreenWidth,
                    fontWeight: secondfontWeightText,
                  )
              ),
            ]
          ),
        ),
      ],
    );
  }
}
