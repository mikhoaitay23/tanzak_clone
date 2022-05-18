import 'package:flutter/material.dart';
import 'package:tanzak_clone/screen/purchase/purchase_screen.dart';

import '../fake_data.dart';
import '../screen/detail/detail_screen.dart';
import 'ktext.dart';

class SectionLock extends StatelessWidget {
  const SectionLock({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 160,
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
                  Navigator.of(context).push(
                    PageRouteBuilder(
                      opaque: false, // set to false
                      pageBuilder: (_, __, ___) => PurchaseScreen(),
                    ),
                  );
                },
                child: ColorFiltered(
                  colorFilter: ColorFilter.mode(Colors.blue.withOpacity(0.3), BlendMode.dstATop),
                  child: Image.network(
                    fakeItemHome[index].urlImage,
                    fit: BoxFit.cover,
                  ),
                )
              );
            },
          ),
        ),
      ],
    );
  }
}
