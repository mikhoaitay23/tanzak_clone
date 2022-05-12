import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tanzak_clone/widget/triangle.dart';
import 'dart:math' as math;

import '../data/model/message_model.dart';

class ReceiveMessage extends StatelessWidget {
  final Message messageModel;

  const ReceiveMessage({Key key, this.messageModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 50, left: 18.0, top: 5, bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Transform(
            alignment: Alignment.center,
            transform: Matrix4.rotationY(math.pi),
            child: CustomPaint(
              painter: Triangle(bgColor: Colors.grey.shade300),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(15),
            margin: const EdgeInsets.only(bottom: 5),
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(19),
                bottomLeft: Radius.circular(19),
                bottomRight: Radius.circular(19),
              ),
            ),
            child: Text(
              messageModel.text,
              maxLines: 4,
              style: const TextStyle(color: Colors.black, fontSize: 15),
            ),
          ),
        ],
      ),
    );
  }
}
