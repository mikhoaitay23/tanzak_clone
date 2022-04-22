import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tanzak_clone/utils/strings.dart';

import '../../widget/ktext.dart';

class DetailScreen extends StatelessWidget {
  static const String routeName = '/DetailScreen';

  const DetailScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: KText(text: Strings.detail, color: Colors.white,),
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Positioned(
                        child: ImageFiltered(
                      imageFilter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                      child: Image.asset('assets/images/img_haha.jpg'),
                    )),
                    const Positioned(
                        child: SizedBox(
                      width: 200,
                      child: Image(
                        image: ExactAssetImage('assets/images/img_haha.jpg'),
                      ),
                    ))
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8, left: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      KText(
                        text: 'This is title !',
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 18,
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.favorite_border,
                            color: Colors.blue,
                          ))
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        KText(text: 'Author: This is name of author', color: Colors.black,),
                        KText(text: 'Artist: This is name of artist', color: Colors.black,),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        KText(
                          text: 'This is description',
                          color: Colors.blue,
                        ),
                        KText(
                          text: Strings.description,
                          color: Colors.blue,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: SizedBox(
                        height: 50,
                        width: double.infinity,
                        child: Align(
                          child: SizedBox(
                            child: KText(
                              text: 'Button',
                              color: Colors.white,
                            ),
                          ),
                        )),
                    style: ElevatedButton.styleFrom(primary: Colors.indigo),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
