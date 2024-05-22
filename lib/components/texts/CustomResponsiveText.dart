import 'package:flutter/material.dart';
import 'package:projects/theme/AppTheme.dart';

class CustomResponsiveText extends StatelessWidget {

  final String firstText;
  final String? secondText;

  final Color firstTextColor;
  final Color? secondTextColor;

  final double firstTextSize;
  final double? secondTextSize;

  const CustomResponsiveText({
    super.key,
    required this.firstText,
    this.secondText,

    required this.firstTextColor,
    this.secondTextColor,

    required this.firstTextSize,
    this.secondTextSize,
  });

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size * 0.7;
    var screenHeight = MediaQuery.of(context).size * 0.7;

    return SizedBox(
      height: screenHeight.height,
      width: screenSize.width,
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: firstText,
              style: TextStyle(
                color: firstTextColor,
                fontSize: firstTextSize,
                fontWeight: AppFonts.fontWeightRegular
              )
            ),
            TextSpan(
              text: secondText,
              style: TextStyle(
                  color: secondTextColor,
                  fontSize: secondTextSize,
                  fontWeight: AppFonts.fontWeightBold
              )
            )
          ]
        ),
      ),
    );
  }
}
