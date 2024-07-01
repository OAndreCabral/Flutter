import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projects/components/images/CustomBackgroundImage.dart';
import 'package:projects/screens/HomeScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    {
      Future.delayed(const Duration(seconds: 4), () {
        if (true) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const HomeScreen()),
          );
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FutureBuilder<bool>(
                future: null,
                builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const CircularProgressIndicator(
                      color: Colors.black,
                    );
                  } else {
                    return Column(
                      children: [
                        CustomBackgroundImage(imagePath: "./background.png"),
                        const SizedBox(height: 30),
                        if (Platform.isIOS)
                          const CupertinoActivityIndicator(
                            radius: 20,
                          )
                        else
                          const CircularProgressIndicator(
                            color: Colors.black,
                          ),
                      ],
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
