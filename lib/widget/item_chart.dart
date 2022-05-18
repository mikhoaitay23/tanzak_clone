import 'package:flutter/material.dart';
import 'package:tanzak_clone/utils/images.dart';

import '../data/model/item_home.dart';
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
            child: Image.network(
              itemHome.urlImage,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        KText(
          text: itemHome.name,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        const SizedBox(
          height: 4,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: Colors.indigo,
              ),
              padding: const EdgeInsets.all(2),
              child: KText(
                text: '66P',
                color: Colors.white,
              ),
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4),
                  child: Image(
                    image: ExactAssetImage(Images.icReading),
                    width: 20,
                    height: 20,
                  ),
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
