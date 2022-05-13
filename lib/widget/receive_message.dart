import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tanzak_clone/widget/triangle.dart';
import 'dart:math' as math;

import '../data/model/message_model.dart';
import '../fake_data.dart';
import 'ktext.dart';

class ReceiveMessage extends StatelessWidget {
  final Message messageModel;

  const ReceiveMessage({Key key, this.messageModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 32.0, top: 5, bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipOval(
            child: SizedBox.fromSize(
              size: const Size.fromRadius(20), // Image radius
              child: Image.network(
                fakeItemHome[1].urlImage,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              KText(
                text: 'Receive',
                color: Colors.black,
                maxLines: 4,
                fontSize: 14,
              ),
              const SizedBox(
                height: 4,
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        margin: const EdgeInsets.only(top: 6),
                        child: Transform(
                          alignment: Alignment.center,
                          transform: Matrix4.rotationY(math.pi),
                          child: CustomPaint(
                            painter: Triangle(bgColor: Colors.grey.shade300),
                          ),
                        )),
                    Container(
                      padding: const EdgeInsets.all(15),
                      margin: const EdgeInsets.only(bottom: 5),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(14),
                          topLeft: Radius.circular(14),
                          bottomLeft: Radius.circular(14),
                          bottomRight: Radius.circular(14),
                        ),
                      ),
                      child: Text(
                        messageModel.text,
                        maxLines: 4,
                        style:
                            const TextStyle(color: Colors.black, fontSize: 15),
                      ),
                    ),
                  ])
            ],
          )
        ],
      ),
    );
  }
}
