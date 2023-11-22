import 'package:commission_station/app/controller/commission_station_web_page_view_controller.dart';
import 'package:commission_station/app/view/theme/app_colors.dart';
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
        backgroundColor: AppColors.twitterCard,
        elevation: 0,
      ),
      body: SafeArea(
        child: WebViewWidget(
          controller: controller.controller,
        ),
      ),
    );
  }
}
