
import 'package:flutter/material.dart';

import '../fake_data.dart';
import '../screen/detail/detail_screen.dart';
import 'ktext.dart';

class SectionManga extends StatelessWidget {
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
                text: 'Title',
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        ),
        Container(
          height: 258,
          margin: const EdgeInsets.symmetric(horizontal: 8),
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(top: 8),
            itemCount: fakeItemHome.length,
            separatorBuilder: (BuildContext context, int index) =>
                const SizedBox(
              width: 12,
            ),
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                onTap: () {
                  Navigator.pushNamed(context, DetailScreen.routeName);
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      color: Colors.grey,
                      width: 160,
                      height: 200,
                      child: Image.network(
                        fakeItemHome[index].urlImage,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    KText(
                      text: fakeItemHome[index].name,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    KText(
                      text: fakeItemHome[index].description,
                      color: Colors.black,
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
