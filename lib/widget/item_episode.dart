import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../data/model/item_home.dart';
import 'ktext.dart';

class ItemEpisode extends StatelessWidget {
  ItemHome itemHome;

  ItemEpisode({this.itemHome});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: InkWell(
            onTap: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      color: Colors.grey,
                      width: 100,
                      height: 60,
                      child: Image.network(itemHome.urlImage, fit: BoxFit.cover,),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: KText(
                        text: itemHome.name,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
                KText(
                  text: itemHome.description,
                  color: Colors.black,
                )
              ],
            ),
          ),
        ),
        const Divider()
      ],
    );
  }
}
