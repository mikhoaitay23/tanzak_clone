import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:tanzak_clone/screen/detail/detail_screen.dart';

import '../../fake_data.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final urlImages = [
    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
    'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
  ];
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Column(children: <Widget>[
        Container(
          margin: const EdgeInsets.only(bottom: 8),
          child: CarouselSlider.builder(
            itemCount: urlImages.length,
            options: CarouselOptions(
                height: 250,
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
        const Padding(
          padding: EdgeInsets.all(16),
          child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Option 1',
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
        ),
        SizedBox(
          height: 250,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.all(8),
            itemCount: fakeItemHome.length,
            separatorBuilder: (BuildContext context, int index) =>
                const SizedBox(
              width: 12,
            ),
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                onTap: (){
                  Navigator.pushNamed(context, DetailScreen.routeName);
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      color: Colors.grey,
                      width: 160,
                      height: 200,
                    ),
                    Text(
                      fakeItemHome[index].name,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(fakeItemHome[index].description)
                  ],
                ),
              );
            },
          ),
        ),
        const Padding(
            padding: EdgeInsets.all(16),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Option 2',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            )),
        SizedBox(
          height: 250,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.all(8),
            itemCount: fakeItemHome.length,
            separatorBuilder: (BuildContext context, int index) =>
                const SizedBox(
              width: 12,
            ),
            itemBuilder: (BuildContext context, int index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    color: Colors.grey,
                    width: 160,
                    height: 200,
                  ),
                  Text(
                    fakeItemHome[index].name,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(fakeItemHome[index].description)
                ],
              );
            },
          ),
        )
      ]),
    )));
  }

  Widget buildImage(String urlImage, int index) => Container(
        color: Colors.grey,
        child: Image.network(urlImage, fit: BoxFit.cover),
      );

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
