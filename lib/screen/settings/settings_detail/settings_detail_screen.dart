import 'package:flutter/cupertino.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'dart:io';

class SettingsDetailScreen extends StatefulWidget {
  const SettingsDetailScreen({Key key}) : super(key: key);

  static const String routeName = '/SettingsDetailScreen';

  @override
  SettingsDetailScreenState createState() => SettingsDetailScreenState();
}

class SettingsDetailScreenState extends State<SettingsDetailScreen> {
  @override
  void initState() {
    super.initState();
    // Enable virtual display.
    if (Platform.isAndroid) WebView.platform = AndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return const WebView(
      initialUrl: 'https://flutter.dev',
    );
  }
}
