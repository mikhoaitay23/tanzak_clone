import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tanzak_clone/main.dart';
import 'package:tanzak_clone/utils/images.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    moveToHomeScreen(context);
    return Scaffold(
      body: Image.asset(
        Images.imgAppSplash,
        fit: BoxFit.fitHeight,
      ),
    );
  }

  void moveToHomeScreen(BuildContext context) async {
    await Future.delayed(const Duration(seconds: 2));
    Navigator.pushReplacementNamed(context, HomePage.routeName);
  }
}
