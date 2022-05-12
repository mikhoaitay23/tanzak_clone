import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tanzak_clone/data/model/message_model.dart';

import 'ktext.dart';

class BotMessage extends StatelessWidget {
  final Message messageModel;

  const BotMessage({Key key, this.messageModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 16),
      child: Flexible(
        child: Container(
          padding: const EdgeInsets.all(15),
          margin: const EdgeInsets.only(bottom: 5),
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(8),
              topLeft: Radius.circular(8),
              bottomLeft: Radius.circular(8),
              bottomRight: Radius.circular(8),
            ),
          ),
          child: Center(
            child: KText(
              text: messageModel.text,
              color: Colors.black,
              fontSize: 14,
            ),
          ),
        ),
      ),
    );
  }
}
