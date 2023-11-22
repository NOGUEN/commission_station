import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import '../data/model/websites/keyword_search.dart';

class WebPageViewController extends GetxController {
  late WebViewController controller;

  WebPageViewController() {
    controller = WebViewController()
      ..setBackgroundColor(const Color(0x00000000))
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {},
          onPageStarted: (String url) {},
          onPageFinished: (_) {
            Future.delayed(Duration(milliseconds: 5000), () {
              loadHtmlContent();
            });
          },
          onWebResourceError: (WebResourceError error) {},
          onNavigationRequest: (NavigationRequest request) {
            if (request.url.startsWith('https://www.youtube.com/')) {
              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(Uri.parse(Get.arguments));
  }

  void loadHtmlContent() async {
    String script = "document.documentElement.innerHTML";
    final result = await controller.runJavaScriptReturningResult(script);
    String html = result.toString();
  }
}
