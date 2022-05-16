import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tanzak_clone/screen/reading/reading_screen.dart';
import 'package:tanzak_clone/utils/strings.dart';
import 'package:tanzak_clone/widget/section_episode.dart';
import 'package:tanzak_clone/widget/section_manga.dart';
import 'package:expand_widget/expand_widget.dart';
import 'package:share_plus/share_plus.dart';
import '../../utils/images.dart';
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
            fontSize: 18,
          ),
          centerTitle: true,
          flexibleSpace: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(Images.imgBackgroundHeader),
                    fit: BoxFit.fill)),
          ),
          leading: IconButton(
            icon: const Image(
              image: ExactAssetImage(Images.icBtnGoBack),
              width: 24,
              height: 24,
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
          actions: [
            IconButton(
              onPressed: () {
                _onShare(context);
              },
              icon: const Image(
                image: ExactAssetImage(Images.icShareIcon2),
                width: 24,
                height: 24,
              ),
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
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 0.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.5)),
                        ),
                      ),
                    )),
                    const Positioned(
                        left: 16,
                        top: 16,
                        right: 16,
                        bottom: 16,
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
                        icon: const Image(
                          image: ExactAssetImage(Images.icFavoriteDeactive),
                          width: 24,
                          height: 24,
                        ),
                        onPressed: () {},
                      )
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
                    onPressed: () {
                      Navigator.pushNamed(context, ReadingScreen.routeName);
                    },
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
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        decoration: const BoxDecoration(color: Colors.blue),
                        child: Row(
                          children: [
                            Image.asset(Images.icCoin),
                            KText(
                              text: '30',
                            )
                          ],
                        ),
                      ),
                      Image.asset(
                        Images.icHelp,
                        width: 24,
                        height: 24,
                      )
                    ],
                  ),
                ),
                const SectionEpisode(),
                const SectionManga()
              ],
            ),
          ),
        ));
  }

  void _onShare(BuildContext context) async {
    final box = context.findRenderObject() as RenderBox;
    await Share.share('Check out my app',
        subject: 'tanzak',
        sharePositionOrigin: box.localToGlobal(Offset.zero) & box.size);
  }
}
