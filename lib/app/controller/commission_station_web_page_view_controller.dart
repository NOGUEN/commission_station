import 'package:commission_station/app/core/base/base_controller.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebPageViewController extends BaseController {
  late WebViewController controller;
  WebPageViewController() {
    controller = WebViewController()
      ..setBackgroundColor(const Color(0x00000000))
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {},
          onPageStarted: (String url) {},
          onPageFinished: (_) async {
            readJS();
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
  void readJS() async {
    String html = await controller.runJavaScriptReturningResult(
        "window.document.getElementsByTagName('html')[0].outerHTML;") as String;
    print(html);
  }
}
