import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../controller/web_page_view_controller.dart';

class WebViewPage extends GetView<WebPageViewController> {
  const WebViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 105, 105),
      ),
      body: SafeArea(
        child: WebViewWidget(
          controller: controller.controller,
        ),
      ),
    );
  }
}
