import 'package:commission_station/app/controller/main/home_page_controller.dart';
import 'package:get/get.dart';
import 'package:commission_station/app/controller/main/main_controller.dart';

class MainBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MainController>(() {
      return MainController();
    });
    HomePageBinding().dependencies();
  }
}

class HomePageBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomePageController>(() {
      return HomePageController();
    });
  }
}
