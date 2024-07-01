import 'package:flutter/material.dart';
import 'package:projects/components/forms/CustomFormsField.dart';
import 'package:projects/theme/AppTheme.dart';

class CustomForm extends StatefulWidget {

  final String labelTextField;
  final String hintTextField;
  final double fontSizeText;
  final double borderRadiusValue;
  final TextInputType keyboardType;

  CustomForm({
    super.key,
    required this.labelTextField,
    required this.hintTextField,
    required this.fontSizeText,
    required this.borderRadiusValue,
    required this.keyboardType,
  });

  @override
  State<CustomForm> createState() => _CustomFormState();
}

class _CustomFormState extends State<CustomForm> {
  final _formKey = GlobalKey<FormState>();

  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Form(
      key: _formKey,
      child: CustomFormField(
          labelText: widget.labelTextField,
          hintText: widget.hintTextField,
          controller: _controller,
          validator: (value) {
            if (value == null || value.isEmpty){
              return "Por favor, insira o ${widget.labelTextField}";
            }
            return null;
          },
          keyboardType: widget.keyboardType,
          obscureText: false,
          fontSize: widget.fontSizeText,
          fontWeight: FontWeight.normal,
          color: AppColors.textColorNormalBlack,
          borderRadiusFactor: widget.borderRadiusValue,
      ),
    );
  }
}
