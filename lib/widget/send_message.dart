import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tanzak_clone/data/model/message_model.dart';
import 'package:tanzak_clone/fake_data.dart';
import 'package:tanzak_clone/widget/triangle.dart';

import 'ktext.dart';

class SendMessage extends StatelessWidget {
  final Message messageModel;

  const SendMessage({Key key, this.messageModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final message = Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Flexible(
          child: Container(
            padding: const EdgeInsets.all(14),
            decoration: BoxDecoration(
              color: Colors.greenAccent[700],
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(14),
                topRight: Radius.circular(14),
                bottomLeft: Radius.circular(14),
                bottomRight: Radius.circular(14),
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
        Container(
          margin: const EdgeInsets.only(top: 6),
          child:
              CustomPaint(painter: Triangle(bgColor: Colors.greenAccent[700])),
        )
      ],
    );

    return Padding(
      padding: const EdgeInsets.only(right: 8.0, left: 32.0, top: 5, bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Flexible(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              KText(
                text: 'Sender',
                color: Colors.black,
                maxLines: 4,
                fontSize: 14,
              ),
              const SizedBox(height: 4.0,),
              message
            ],
          )),
          const SizedBox(width: 8),
          ClipOval(
            child: SizedBox.fromSize(
              size: const Size.fromRadius(20), // Image radius
              child: Image.network(
                fakeItemHome[2].urlImage,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
