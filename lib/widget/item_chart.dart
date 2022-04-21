import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tanzak_clone/model/item_home.dart';

class ItemChart extends StatelessWidget {
  ItemHome itemHome;

  ItemChart({required this.itemHome});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: Container(
            color: Colors.grey,
            height: 200,
          ),
        ),
        Text(
          itemHome.name,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        Text(itemHome.description)
      ],
    );
  }
}
