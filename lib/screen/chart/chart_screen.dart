import 'package:flutter/material.dart';
import 'package:tanzak_clone/utils/strings.dart';

import '../../utils/images.dart';
import '../../widget/ktext.dart';
import '../chart/first/chart_screen_first.dart';
import '../chart/second/chart_screen_second.dart';

class ChartScreen extends StatefulWidget {
  @override
  _ChartScreenState createState() => _ChartScreenState();
}

class _ChartScreenState extends State<ChartScreen> {
  final screens = [const ChartScreenFirst(), const ChartScreenSecond()];

  TabBar get _tabBar => const TabBar(tabs: [
    Tab(
      text: Strings.first,
    ),
    Tab(
      text: Strings.second,
    )
  ]);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: PreferredSize(
            preferredSize: _tabBar.preferredSize,
            child: ColoredBox(
              color: Colors.white,
              child: _tabBar,
            ),
          ),
          title: KText(
            text: Strings.chart,
            color: Colors.white,
            fontSize: 18,
          ),
          centerTitle: true,
          flexibleSpace: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(Images.imgBackgroundHeader),
                    fit: BoxFit.fill)),
          ),
        ),
        body: TabBarView(children: screens),
      ),
    );
  }
}
