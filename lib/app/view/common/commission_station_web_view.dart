import 'package:commission_station/app/controller/commission_station_web_page_view_controller.dart';
import 'package:commission_station/app/core/base/base_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:webview_flutter/webview_flutter.dart';

class CommissionStationWebViewPage extends BaseView<WebPageViewController> {
  CommissionStationWebViewPage();

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

  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return null;
  }

  @override
  Widget body(BuildContext context) {
    return WebViewWidget(
      controller: controller.controller,
    );
  }
}
