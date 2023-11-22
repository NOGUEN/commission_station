import 'package:commission_station/app/controller/commission_station_web_page_view_controller.dart';
import 'package:get/get.dart';

class WebViewBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WebPageViewController>(() {
      return WebPageViewController();
    });
  }
}
