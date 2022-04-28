import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ktext.dart';

class ItemSettings extends StatelessWidget {
  String title;
  bool haveArrow;

  ItemSettings({this.title, this.haveArrow});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              KText(text: title, color: Colors.black,),
              Visibility(
                child: const Icon(Icons.arrow_forward_ios),
                visible: haveArrow,
              ),
            ],
          ),
        ),
        const Divider(),
      ],
    );
  }
}
