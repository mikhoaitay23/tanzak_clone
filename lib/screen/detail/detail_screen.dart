import 'dart:ui';

import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  static const String routeName = '/DetailScreen';

  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SizedBox(
          child: Stack(
        children: [
          Positioned(
            child: Container(
              height: 300,
              child: ImageFiltered(
                imageFilter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                child: Image.asset('assets/images/img_haha.jpg'),
              ),
            ),
          ),
          Positioned(
              child: Container(
                width: 160,
                height: 160,
                child: const Image(
                  image: ExactAssetImage('assets/images/img_haha.jpg'),
                ),
              ))
        ],
      )),
    ));
  }
}
