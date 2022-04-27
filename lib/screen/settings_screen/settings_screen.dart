import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widget/ktext.dart';

class SettingsScreen extends StatefulWidget {
  @override
  SettingsState createState() => SettingsState();
}

class SettingsState extends State<SettingsScreen> {
  bool _switchValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: KText(
            text: 'Settings',
            color: Colors.white,
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              _title('Title 1'),
              Column(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: KText(
                      text: 'Button',
                      color: Colors.white,
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.indigo,
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.zero)),
                        elevation: 0),
                  ),
                ],
              ),
              _title('Title 2'),
              _title('Title 3'),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Sub title'),
                    CupertinoSwitch(
                      value: _switchValue,
                      onChanged: (value) {
                        setState(() {
                          _switchValue = value;
                        });
                      },
                    )
                  ],
                ),
              ),
              _title('Title 4'),
              InkWell(
                onTap: () {},
                child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 16, horizontal: 8),
                      child: Text('Sub title'),
                    )),
              ),
              _title('Version.2.2.3(1200)'),
            ],
          ),
        ));
  }

  Widget _title(String title) => Container(
        decoration: BoxDecoration(color: Colors.grey[350]),
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Text(title),
        ),
      );
}
