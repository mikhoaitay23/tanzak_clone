import 'package:flutter/material.dart';
import 'package:tanzak_clone/utils/images.dart';

import '../data/model/item_home.dart';
import 'ktext.dart';

class ItemEpisode extends StatelessWidget {
  ItemHome itemHome;

  ItemEpisode({Key key, this.itemHome}) : super(key: key);

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
                      child: Image.network(
                        itemHome.urlImage,
                        fit: BoxFit.cover,
                      ),
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
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(Images.icFreeStory, width: 48.0, height: 48.0,),
                    KText(
                      text: itemHome.description,
                      color: Colors.black,
                    ),
                  ],
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
