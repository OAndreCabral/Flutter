import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final Color? color;
  final double containerWidth;
  final double containerHeight;
  final Widget child;
  final double? marginValue;

  const CustomContainer({
    super.key,
    this.color,
    this.marginValue,
    required this.containerWidth,
    required this.child,
    required this.containerHeight,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * containerWidth,
      height: MediaQuery.of(context).size.height * containerHeight,
      margin: marginValue != null ? EdgeInsets.all(marginValue!) : EdgeInsets.zero,
      // margin: marginValue != null ? EdgeInsets.only(bottom: marginValue!, left: marginValue!, right: marginValue!, top: marginValue!) : EdgeInsets.zero,
      color: color,
      child: child,
    );
  }
}
