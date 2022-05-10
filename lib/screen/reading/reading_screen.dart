import 'package:flutter/material.dart';
import 'package:flutter_chat_bubble/bubble_type.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';
import 'package:flutter_chat_bubble/clippers/chat_bubble_clipper_8.dart';

import '../../data/model/message_model.dart';
import '../../utils/images.dart';
import '../../widget/ktext.dart';

class ReadingScreen extends StatefulWidget {
  const ReadingScreen({Key key}) : super(key: key);

  static const String routeName = '/ReadingScreen';

  @override
  ReadingScreenState createState() => ReadingScreenState();
}

class ReadingScreenState extends State<ReadingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Column(
            children: [
              KText(
                text: 'Name',
                color: Colors.white,
              ),
              KText(text: 'Page', color: Colors.white)
            ],
          ),
          centerTitle: true,
          leading: IconButton(
            icon: const Image(
              image: ExactAssetImage(Images.icBtnClose),
              width: 24,
              height: 24,
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Image(
                image: ExactAssetImage(Images.icMenuOption),
                width: 24,
                height: 24,
              ),
              tooltip: 'Option',
            )
          ],
          flexibleSpace: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(Images.imgBackgroundHeader),
                    fit: BoxFit.fill)),
          ),
        ),
        body: Column(
          children: [
            Expanded(
                child: ClipRRect(
              child: ListView.builder(
                reverse: true,
                padding: const EdgeInsets.only(top: 15.0),
                itemCount: messages.length,
                itemBuilder: (BuildContext context, int index) {
                  final Message message = messages[index];
                  final bool isMe = message.sender.id == currentUser.id;
                  return _buildMessage(message, isMe);
                },
              ),
            ))
          ],
        ));
  }

  _buildMessage(Message message, bool isMe) {
    if (isMe) {
      return ChatBubble(
        clipper: ChatBubbleClipper8(type: BubbleType.sendBubble),
        alignment: Alignment.topRight,
        margin: const EdgeInsets.only(top: 20),
        backGroundColor: Colors.blue,
        child: Container(
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width * 0.7,
          ),
          child: Text(
            message.text,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      );
    }
    return ChatBubble(
      clipper: ChatBubbleClipper8(type: BubbleType.receiverBubble),
      backGroundColor: const Color(0xffE7E7ED),
      margin: const EdgeInsets.only(top: 20),
      child: Container(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width * 0.7,
        ),
        child: Text(
          message.text,
          style: const TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
