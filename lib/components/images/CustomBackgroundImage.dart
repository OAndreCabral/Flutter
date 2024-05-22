import 'package:flutter/material.dart';

class Backgroundimage extends StatelessWidget {

  final String imagePath;

  Backgroundimage({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size * 1;

    return Center(
      child: Container(
        width: screenSize.width,
        height: screenSize.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.fill,
          )
        ),
      ),
    );
  }
}
