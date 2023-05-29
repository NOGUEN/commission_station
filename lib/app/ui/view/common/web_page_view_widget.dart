import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebPageViewWigdet extends StatelessWidget {
  const WebPageViewWigdet({super.key});

  @override
  Widget build(BuildContext context) {
    WebViewController webViewController = WebViewController();

    return Scaffold(
      body: SafeArea(
        child: Container(),
      ),
    );
  }
}
