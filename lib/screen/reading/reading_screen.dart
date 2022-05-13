import 'package:flutter/material.dart';
import 'package:tanzak_clone/widget/bot_message.dart';
import 'package:tanzak_clone/widget/bottom_reading_controller.dart';
import 'package:tanzak_clone/widget/receive_message.dart';
import 'package:tanzak_clone/widget/send_message.dart';

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
        body: Stack(
          children: [
            Expanded(
                child: ClipRRect(
              child: ListView.builder(
                reverse: true,
                padding: const EdgeInsets.only(top: 15.0),
                itemCount: messages.length + 1,
                itemBuilder: (BuildContext context, int index) {
                  if (index == 0) {
                    return SizedBox(
                      height: MediaQuery.of(context).size.height / 4,
                    );
                  } else {
                    return _buildMessage(messages[index - 1],
                        messages[index - 1].sender.id == currentUser.id);
                  }
                },
              ),
            )),
            GestureDetector(
              onTap: () {
                _addMessage();
              },
              child: const Align(
                alignment: Alignment.bottomCenter,
                child: BottomReadingController(),
              ),
            )
          ],
        ));
  }

  _buildMessage(Message message, bool isMe) {
    if (message.sender.id == 2) {
      return BotMessage(
        messageModel: message,
      );
    } else {
      if (isMe) {
        return SendMessage(
          messageModel: message,
        );
      }
      return ReceiveMessage(
        messageModel: message,
      );
    }
  }

  _addMessage() {
    Message message = Message(
      sender: greg,
      time: '5:30 PM',
      text: 'Hey, how\'s it going? What did you do today?',
      isLiked: true,
      unread: true,
    );
    setState(() {
      messages.insert(1, message);
    });
  }
}
