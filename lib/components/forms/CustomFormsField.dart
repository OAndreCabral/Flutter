import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projects/theme/AppTheme.dart';

class CustomFormField extends StatelessWidget {
  final String labelText;
  final String hintText;

  final TextEditingController controller;
  final TextInputType keyboardType;

  final double fontSize;
  final FontWeight fontWeight;
  final bool obscureText;
  final Color color;

  final String? Function(String?)? validator;

  const CustomFormField({
    super.key,
    required this.labelText,
    required this.hintText,
    required this.controller,
    required this.keyboardType,
    required this.obscureText,
    this.validator,
    required this.fontSize,
    required this.fontWeight,
    required this.color
  });

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 1.0),
      child: SizedBox(
        height: screenHeight * 0.08,
        width: screenWidth * 1,
        child: TextFormField(
          controller: controller,
          keyboardType: keyboardType,
          obscureText: obscureText,
          validator: validator,
          decoration: InputDecoration(
            labelText: labelText,
            labelStyle: TextStyle(
              color: AppColors.textColorNormalBlack,
              fontSize: fontSize,
              fontWeight: fontWeight,
            ),
            hintText: hintText,
            hintStyle: TextStyle(
              color: color,
              fontSize: fontSize,
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: color,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: color,
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: color,
              ),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: color,
              ),
            ),
          ),
          style: TextStyle(
            color: color,
            fontSize: fontSize,
          ),
        ),
      ),
    );
  }
}
