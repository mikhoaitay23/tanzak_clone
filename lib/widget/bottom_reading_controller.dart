import 'package:flutter/cupertino.dart';
import 'package:tanzak_clone/utils/images.dart';

class BottomReadingController extends StatefulWidget {
  const BottomReadingController({Key key}) : super(key: key);

  @override
  BottomReadingControllerState createState() => BottomReadingControllerState();
}

class BottomReadingControllerState extends State<BottomReadingController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 4,
      width: double.infinity,
      decoration:
          BoxDecoration(color: const Color(0xFFFFFFFF).withOpacity(0.3)),
      child: Align(
        alignment: Alignment.center,
        child: Stack(
          children: [Image.asset(Images.imgGuidelineNew)],
        ),
      ),
    );
  }
}
