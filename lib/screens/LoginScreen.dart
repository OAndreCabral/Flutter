import 'package:flutter/material.dart';
import 'package:projects/components/button/CustomButton.dart';
import 'package:projects/components/button/CustomDropdownButton.dart';
import 'package:projects/components/button/CustomTest.dart';
import 'package:projects/components/container/CustomContainer.dart';
import 'package:projects/components/forms/CustomForm.dart';
import 'package:projects/components/images/CustomBackgroundImage.dart';
import 'package:projects/components/images/CustomPathImage.dart';
import 'package:projects/components/texts/CustomDoubleStaticText.dart';
import 'package:projects/components/texts/CustomStaticText.dart';
import 'package:projects/components/texts/CustomTextField.dart';
import 'package:projects/theme/AppTheme.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Stack(
            children: [
              CustomBackgroundImage(
                backgroundColor: AppColors.buttonForegroundWhite,
              ),
              const Center(
                child: Column(
                  children: [
                    // const CustomContainer(
                    //   marginValue: 10,
                    //   color: Colors.yellow,
                    //   containerHeight: 0.2,
                    //   containerWidth: 0.8,
                    //   // containerHeight: 0.15,
                    //   child: CustomPathImage(
                    //     imagePath: "assets/images/LogoApp.png",
                    //   ),
                    // ),
                    // CustomContainer(
                    //   marginValue: 10,
                    //   containerHeight: 0.35,
                    //   color: Colors.cyan,
                    //   containerWidth: 0.8,
                    //   child: CustomDoubleStaticText(
                    //     selectTextAlign: TextAlign.center,
                    //     firstText: "Controle seus estágios com a ",
                    //     firstTextSize: 0.0953,
                    //     firstTextColor: AppColors.textColorNormalBlack,
                    //     firstTextFontWeight: AppFonts.fontWeightRegular,
                    //
                    //     secondText: "melhor ferramenta",
                    //     secondTextSize: 0.0953,
                    //     secondTextColor: AppColors.textColorNormalBlack,
                    //     secondfontWeightText: AppFonts.fontWeightBold,
                    //   ),
                    // ),
                    // CustomContainer(
                    //   marginValue: 10,
                    //   containerHeight: 0.1,
                    //   containerWidth: 0.8,
                    //   color: Colors.blue,
                    //   child: CustomStaticText(
                    //       selectTextAlign: TextAlign.justify,
                    //       firstText: "Selecione sua Instituição de Ensino e faça o Login",
                    //       firstTextColor: AppColors.textColorLightGrey,
                    //       firstTextSize: 0.04,
                    //       firstTextFontWeight: AppFonts.fontWeightRegular
                    //   ),
                    // ),
                    // CustomContainer(
                    //   marginValue: 10,
                    //   containerHeight: 0.12,
                    //   containerWidth: 0.8,
                    //   color: Colors.red,
                    //   child: CustomForm(
                    //     keyboardType: TextInputType.numberWithOptions(),
                    //     labelTextField: "CPF",
                    //     hintTextField: 'Insira seu CPF',
                    //     fontSizeText: AppFonts.fontSizeSixteen,
                    //     borderRadiusValue: AppFonts.borderRadiusTwentyFour,
                    //   ),
                    // ),
                    CustomContainer(
                      color: Colors.amber,
                      containerHeight: 0.1,
                      containerWidth: 0.7,
                      marginValue: 10,
                      child: CustomDropdownButton(text: "Selecione sua instituição ",)
                    ),
                  ],
                ),
              )
            ],
          ),
        )
    );
  }
}
