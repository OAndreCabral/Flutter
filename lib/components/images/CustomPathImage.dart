import 'package:flutter/material.dart';

class CustomPathImage extends StatelessWidget {

  final String? imagePath;

  const CustomPathImage({
    super.key,
    this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(imagePath!, fit: BoxFit.scaleDown,);
  }
}

// Container(
// width: containerWidth,
// height: ContainerHeight,
// decoration: BoxDecoration(
// image: imagePath != null ? DecorationImage(
// image: AssetImage(imagePath!),
// fit: BoxFit.scaleDown,
// ) : null,
// ),
// );