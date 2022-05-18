import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tanzak_clone/utils/images.dart';
import 'package:tanzak_clone/widget/ktext.dart';

class PurchaseScreen extends StatelessWidget {
  static const String routeName = '/PurchaseScreen';

  const PurchaseScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.5),
      appBar: AppBar(
        leading: IconButton(
          icon: const Image(
            image: ExactAssetImage(Images.icBtnClose),
            width: 24,
            height: 24,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.black.withOpacity(0.5),
      ),
      body: SingleChildScrollView(
        child: Align(
          alignment: Alignment.center,
          child: Column(
            children: [
              KText(
                text: 'QWERTY',
                color: Colors.white,
              )
            ],
          ),
        ),
      ),
    );
  }
}
