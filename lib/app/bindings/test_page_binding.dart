import 'package:commission_station/app/controller/test_page_controller.dart';
import 'package:get/get.dart';

//페이지 별로 의존성 관리해주세요. repository나 api를 초기화해 사용할 수 있어요. app_page의 binding에 사용해주세요
class TestPageBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TestPageController>(() {
      return TestPageController();
    });
  }
}
