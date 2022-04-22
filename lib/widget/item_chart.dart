import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tanzak_clone/model/item_home.dart';

import 'ktext.dart';

class ItemChart extends StatelessWidget {
  ItemHome itemHome;

  ItemChart({this.itemHome});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: Container(
            color: Colors.grey,
            height: 200,
          ),
        ),
        KText(
          text: itemHome.name,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: Colors.indigo,
              ),
              padding: const EdgeInsets.all(4),
              child: KText(
                text: '66P',
                color: Colors.white,
              ),
            ),
            Row(
              children: [
                const Icon(
                  Icons.remove_red_eye_sharp,
                  color: Colors.indigo,
                ),
                KText(
                  text: '6666V',
                  color: Colors.black,
                )
              ],
            )
          ],
        )
      ],
    );
  }
}
