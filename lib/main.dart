import 'package:flutter/material.dart';
import 'package:projects/components/forms/CustomFormsField.dart';
import 'package:projects/theme/AppTheme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: CustomFormField(
            labelText: "teste",
            hintText: "placeholder",
            keyboardType: TextInputType.number,
            fontSize: AppFonts.fontSizeTwelve,
            fontWeight: AppFonts.fontWeightBold,
            color: AppColors.textColorDarkBlue,
            widthFactor: 0.4,
            heightFactor: 1,
            obscureText: false,
        ),
      )
    );
  }
}

