import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tanzak_clone/utils/strings.dart';
import 'package:tanzak_clone/widget/section_episode.dart';
import 'package:tanzak_clone/widget/section_manga.dart';
import 'package:expand_widget/expand_widget.dart';

import '../../widget/ktext.dart';

class DetailScreen extends StatelessWidget {
  static const String routeName = '/DetailScreen';

  const DetailScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: KText(
            text: Strings.detail,
            color: Colors.white,
          ),
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.share),
              tooltip: 'Share',
            )
          ],
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Positioned(
                        child: Container(
                      height: 250,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: ExactAssetImage('assets/images/img_haha.jpg'),
                          fit: BoxFit.fill,
                        ),
                      ),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.0)),
                        ),
                      ),
                    )),
                    const Positioned(
                        left: 48,
                        top: 48,
                        right: 48,
                        bottom: 48,
                        child: SizedBox(
                          child: Image(
                            image:
                                ExactAssetImage('assets/images/img_haha.jpg'),
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
                        KText(
                          text: 'Author: This is name of author',
                          color: Colors.black,
                        ),
                        KText(
                          text: 'Artist: This is name of artist',
                          color: Colors.black,
                        ),
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
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
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
                Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        KText(
                          text: 'Sub description!',
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 18,
                        )
                      ],
                    )),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    children: const <Widget>[
                      SizedBox(height: 8),
                      ExpandText(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam suscipit risus pulvinar, hendrerit nisi quis, vehicula ante. Morbi ut diam elit. Praesent non justo sodales, auctor lacus id, congue massa. Duis ac odio dui. Sed sed egestas metus. Donec hendrerit velit magna. Vivamus elementum, nulla ac tempor euismod, erat nunc mollis diam, nec consequat nisl ex eu tellus. Curabitur fringilla enim at lorem pulvinar, id ornare tellus aliquam. Cras eget nibh tempor lacus aliquam rutrum.',
                        textAlign: TextAlign.justify,
                        maxLines: 3,
                      ),
                    ],
                  ),
                ),
                SectionEpisode(),
                SectionManga()
              ],
            ),
          ),
        ));
  }
}
