import 'package:commission_station/app/controller/main_controller.dart';
import 'package:get/get.dart';

class MainPageBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MainController>(() {
      return MainController();
    });
  }
}
