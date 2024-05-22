import 'package:flutter/material.dart';
import 'package:projects/components/forms/CustomFormsField.dart';
import 'package:projects/theme/AppTheme.dart';

class CustomForm extends StatefulWidget {
  const CustomForm({super.key});

  @override
  State<CustomForm> createState() => _CustomFormState();
}

class _CustomFormState extends State<CustomForm> {
  final _formKey = GlobalKey<FormState>();
  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            CustomFormField(
                labelText: 'Nome',
                hintText: 'Digite seu nome',
                controller: _controller,
                validator: (value) {
                  if (value == null || value.isEmpty){
                    return "Por favor, insira seu nome";
                  }
                  return null;
                },
                keyboardType: const TextInputType.numberWithOptions(),
                obscureText: false,
                fontSize: AppFonts.fontSizeFifteen,
                fontWeight: AppFonts.fontWeightRegular,
                color: AppColors.textColorNormalBlack,
                widthFactor: 0.5,
            ),
          ],
        ),
      ),
    );
  }
}
