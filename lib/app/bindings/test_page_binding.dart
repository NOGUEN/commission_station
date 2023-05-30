import 'package:commission_station/app/controller/main_controller.dart';
import 'package:commission_station/app/controller/test_page_controller.dart';
import 'package:get/get.dart';

class TestPageBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MainController>(() {
      return MainController();
    });
  }
}
