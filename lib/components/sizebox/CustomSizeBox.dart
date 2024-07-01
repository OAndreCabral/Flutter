import 'package:flutter/material.dart';

class CustomSizeBox extends StatelessWidget {

  final Widget widget;
  final double widthFactor;
  final double heightFactor;

  const CustomSizeBox({
    super.key,
    required this.widget,
    required this.widthFactor,
    required this.heightFactor
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return SizedBox(
          width: constraints.maxWidth * widthFactor,
          height: constraints.maxHeight * heightFactor,
          child: widget,
        );
      },
    );
  }
}
