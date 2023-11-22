import 'package:commission_station/app/controller/commission_station_web_page_view_controller.dart';
import 'package:commission_station/app/core/base/base_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewPage extends BaseView<WebPageViewController> {
  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return AppBar(
      backgroundColor: const Color.fromARGB(255, 255, 105, 105),
    );
  }

  @override
  Widget body(BuildContext context) {
    return SafeArea(
      child: WebViewWidget(
        controller: controller.controller,
      ),
    );
  }
}
