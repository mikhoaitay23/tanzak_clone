import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChartScreenFirst extends StatelessWidget{

  const ChartScreenFirst({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: GridView(gridDelegate: gridDelegate),
    );
  }

}