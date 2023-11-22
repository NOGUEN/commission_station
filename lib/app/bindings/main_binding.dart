import 'package:commission_station/app/controller/main/home_page_controller.dart';
import 'package:commission_station/app/controller/main/social_page_controller.dart';
import 'package:get/get.dart';
import 'package:commission_station/app/controller/main/main_controller.dart';

class MainBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MainController>(() {
      return MainController();
    });

    SocialPageBinding().dependencies();
  }
}

class SocialPageBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SocialPageController>(() {
      return SocialPageController();
    });
  }
}
