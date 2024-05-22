import 'package:flutter/material.dart';
import 'package:projects/components/forms/CustomForm.dart';
import 'package:projects/components/forms/CustomFormsField.dart';
import 'package:projects/components/images/CustomBackgroundImage.dart';
import 'package:projects/components/texts/CustomResponsiveText.dart';
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
        body: CustomForm(),
      )
    );
  }
}

