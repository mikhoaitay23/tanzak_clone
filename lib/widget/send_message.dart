import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tanzak_clone/data/model/message_model.dart';
import 'package:tanzak_clone/widget/triangle.dart';

import 'ktext.dart';

class SendMessage extends StatelessWidget {
  final Message messageModel;
  const SendMessage({Key key, this.messageModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final message = Flexible(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Flexible(
          child: Container(
            padding: const EdgeInsets.all(14),
            decoration: BoxDecoration(
              color: Colors.greenAccent[700],
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(18),
                bottomLeft: Radius.circular(18),
                bottomRight: Radius.circular(18),
              ),
            ),
            child: KText(
              text: messageModel.text,
              color: Colors.black,
              maxLines: 4,
              fontSize: 14,
            ),
          ),
        ),
        CustomPaint(painter: Triangle(bgColor: Colors.greenAccent[700])),
      ],
    ));

    return Padding(
      padding: const EdgeInsets.only(right: 18.0, left: 50, top: 5, bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          const SizedBox(height: 30),
          message,
        ],
      ),
    );
  }
}
