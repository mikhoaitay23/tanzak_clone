import 'package:flutter/material.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:tanzak_clone/screen/settings/settings_detail/settings_detail_screen.dart';

import 'ktext.dart';

class ItemSettings extends StatelessWidget {
  String title;
  bool haveArrow;

  ItemSettings({this.title, this.haveArrow});

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
                  child: const Icon(Icons.arrow_forward_ios),
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

  // Future<void> sendMail() async {
  //   final Email email = Email(
  //     body: 'Email body',
  //     subject: 'Email subject',
  //     recipients: ['example@example.com'],
  //     isHTML: false,
  //   );
  //
  //   String platformResponse;
  //
  //   try {
  //     await FlutterEmailSender.send(email);
  //     platformResponse = 'success';
  //   } catch (error) {
  //     print(error);
  //     platformResponse = error.toString();
  //   }
  //
  //   if (!mounted) return;
  //
  //   ScaffoldMessenger.of(context).showSnackBar(
  //     SnackBar(
  //       content: Text(platformResponse),
  //     ),
  //   );
  // }

  Future<void> sendMail() async {
    final Email email = Email(
      body: 'Email body',
      subject: 'Email subject',
      recipients: ['example@example.com'],
      cc: ['cc@example.com'],
      bcc: ['bcc@example.com'],
      attachmentPaths: ['/path/to/attachment.zip'],
      isHTML: false,
    );

    await FlutterEmailSender.send(email);
  }
}
