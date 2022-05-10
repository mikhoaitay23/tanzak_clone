import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:tanzak_clone/utils/strings.dart';
import 'package:tanzak_clone/widget/ktext.dart';
import 'package:tanzak_clone/widget/section_manga.dart';

import '../../fake_data.dart';
import '../../utils/images.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int activeIndex = 0;

  @override
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.blue,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.all(88),
            child: Image.asset(
              Images.icLogoName,
            ),
          ),
          centerTitle: true,
          flexibleSpace: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(Images.imgBackgroundHeader),
                    fit: BoxFit.fill)),
          ),
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
            const SectionManga(),
            const SectionManga(),
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
