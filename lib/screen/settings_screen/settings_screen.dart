import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widget/ktext.dart';

class SettingsScreen extends StatelessWidget {
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
    );
  }
}
