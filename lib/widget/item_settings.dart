import 'package:flutter/material.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:tanzak_clone/screen/settings/settings_detail/settings_detail_screen.dart';
import 'package:tanzak_clone/utils/images.dart';

import 'ktext.dart';

class ItemSettings extends StatelessWidget {
  String title;
  bool haveArrow;

  ItemSettings({Key key, this.title, this.haveArrow}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                KText(
                  text: title,
                  color: Colors.black,
                ),
                Visibility(
                  child: Image.asset(Images.icArrowRight, width: 16, height: 16,),
                  visible: haveArrow,
                ),
              ],
            ),
          ),
          onTap: () {
            if (haveArrow) {
              Navigator.pushNamed(context, SettingsDetailScreen.routeName);
            } else {
              sendMail();
            }
          },
        ),
        const Divider(),
      ],
    );
  }

  Future<void> sendMail() async {
    final Email email = Email(
      body: 'Email body',
      subject: 'Email subject',
      recipients: ['example@example.com'],
      cc: ['cc@example.com'],
      bcc: ['bcc@example.com'],
      isHTML: false,
    );

    await FlutterEmailSender.send(email);
  }
}
