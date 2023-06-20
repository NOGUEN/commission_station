import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebPageViewController extends GetxController {
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
            loadHtmlContent();
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
        "new XMLSerializer().serializeToString(document);") as String;
    print(html);
  }

  void loadHtmlContent() async {
    String javascriptCode = '''
      var xhr = new XMLHttpRequest();
      xhr.open('GET', 'https://twitter.com/', true);
      xhr.onreadystatechange = function() {
        if (xhr.readyState === 4 && xhr.status === 200) {
          var htmlContent = xhr.responseText;
          window.flutter_inappwebview.callHandler('htmlContentCallback', htmlContent);
        }
      };
      xhr.send();
    ''';

    String html =
        await controller.runJavaScriptReturningResult(javascriptCode) as String;
    print(html);
  }
}
