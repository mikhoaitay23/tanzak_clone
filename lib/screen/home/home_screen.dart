import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:tanzak_clone/utils/strings.dart';
import 'package:tanzak_clone/widget/ktext.dart';
import 'package:tanzak_clone/widget/section_manga.dart';

import '../../fake_data.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: KText(
            text: Strings.home,
            color: Colors.white,
            fontSize: 18,
          ),
          centerTitle: true,
        ),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Column(children: <Widget>[
            Container(
              margin: const EdgeInsets.only(bottom: 8),
              child: CarouselSlider.builder(
                itemCount: urlImages.length,
                options: CarouselOptions(
                    autoPlay: true,
                    viewportFraction: 1,
                    onPageChanged: (index, reason) =>
                        setState(() => activeIndex = index)),
                itemBuilder: (context, index, realIndex) {
                  final urlImage = urlImages[index];
                  return buildImage(urlImage, index);
                },
              ),
            ),
            buildIndicator(),
            SectionManga(),
            SectionManga(),
          ]),
        )));
  }

  Widget buildImage(String urlImage, int index) => Container(
      color: Colors.grey,
      child: ClipRRect(
        child: Stack(children: <Widget>[
          InkResponse(
              child: Image.network(urlImage, fit: BoxFit.cover, width: 1000.0),
              onTap: () {})
        ]),
      ));

  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: urlImages.length,
        effect: const WormEffect(
            dotWidth: 10,
            dotHeight: 10,
            activeDotColor: Colors.deepPurple,
            dotColor: Colors.grey),
      );
}
