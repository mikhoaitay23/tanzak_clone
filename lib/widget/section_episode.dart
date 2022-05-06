import 'package:flutter/material.dart';
import 'package:tanzak_clone/widget/item_episode.dart';

import '../fake_data.dart';
import 'ktext.dart';

class SectionEpisode extends StatelessWidget {

  const SectionEpisode({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 8),
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(top: 16, bottom: 8, left: 8),
            child: Align(
              alignment: Alignment.centerLeft,
              child: KText(
                text: 'Episode',
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        ),
        const Divider(),
        Column(
          children: fakeItemHome.map((e) => ItemEpisode(itemHome: e)).toList(),
        )
      ],
    );
  }
}
