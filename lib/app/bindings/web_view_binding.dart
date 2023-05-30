import 'package:get/get.dart';
import '../controller/web_page_view_controller.dart';

class WebViewBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WebPageViewController>(() {
      return WebPageViewController();
    });
  }
}
