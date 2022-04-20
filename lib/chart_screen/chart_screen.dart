
import 'package:flutter/material.dart';
import 'package:tanzak_clone/chart_screen/first/chart_screen_first.dart';
import 'package:tanzak_clone/chart_screen/second/chart_screen_second.dart';

class ChartScreen extends StatefulWidget {
  @override
  _ChartScreenState createState() => _ChartScreenState();
}

class _ChartScreenState extends State<ChartScreen> {
  final screens = [ChartScreenFirst(), ChartScreenSecond()];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(tabs: [
            Tab(
              text: 'First',
            ),
            Tab(
              text: 'Second',
            )
          ]),
          title: const Text(
            'Chart',
          ),
          centerTitle: true,
        ),
        body: TabBarView(children: screens),
      ),
    );
  }
}
