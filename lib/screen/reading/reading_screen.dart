import 'package:flutter/material.dart';

import '../../widget/ktext.dart';

class ReadingScreen extends StatefulWidget {
  const ReadingScreen({Key key}) : super(key: key);

  static const String routeName = '/ReadingScreen';

  @override
  ReadingScreenState createState() => ReadingScreenState();

}

class ReadingScreenState extends State<ReadingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            KText(text: 'Name', color: Colors.white,),
            KText(text: 'Page', color: Colors.white)
          ],
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {

            },
            icon: const Icon(Icons.open_with),
            tooltip: 'Option',
          )
        ],
      ),
      body: Center (
        child: KText(
          text: 'asdas',
        ),
      ),
    );
  }

}