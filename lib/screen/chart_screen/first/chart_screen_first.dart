import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tanzak_clone/fake_data.dart';
import 'package:tanzak_clone/widget/item_chart.dart';

class ChartScreenFirst extends StatelessWidget {
  const ChartScreenFirst({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: fakeItemHome.length,
        itemBuilder: (BuildContext ctx, index) {
          return ItemChart(itemHome: fakeItemHome[index]);
          },
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 300,
            childAspectRatio: 2 / 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10),
    );
  }
}
