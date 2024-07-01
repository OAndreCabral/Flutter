import 'package:flutter/material.dart';
import 'package:projects/theme/AppTheme.dart';

class CustomFormField extends StatelessWidget {
  final String labelText;
  final String hintText;

  final TextEditingController? controller;
  final TextInputType keyboardType;

  final double fontSize;
  final double borderRadiusFactor;

  final FontWeight fontWeight;
  final bool obscureText;
  final Color color;

  final String? Function(String?)? validator;

  const CustomFormField({
    super.key,
    required this.labelText,
    required this.hintText,
    this.controller,
    required this.keyboardType,
    required this.obscureText,
    this.validator,
    required this.fontSize,
    required this.fontWeight,
    required this.color,
    required this.borderRadiusFactor,
  });

  @override
  Widget build(BuildContext context) {
    //double width = (widthFactor != null) ? screenWidth * widthFactor! : screenWidth;

    return Column(
      children: [
        TextFormField(
          controller: controller,
          keyboardType: keyboardType,
          validator: validator,
          obscureText: obscureText,
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
              borderRadius: BorderRadius.circular(borderRadiusFactor),
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
      ],
    );
  }
}
