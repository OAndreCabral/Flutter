import 'package:flutter/material.dart';

class CustomBackgroundImage extends StatelessWidget {

  final String? imagePath;
  final Color? backgroundColor;

  const CustomBackgroundImage({
    super.key,
    this.imagePath,
    this.backgroundColor
  });

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size * 1;

    return Center(
      child: Container(
        width: screenSize.width,
        height: screenSize.height,
        decoration: BoxDecoration(
            color: backgroundColor,
            image: imagePath != null ? DecorationImage(
              image: AssetImage(imagePath!),
              fit: BoxFit.fill,
            ) : null,
        ),
      ),
    );
  }
}
