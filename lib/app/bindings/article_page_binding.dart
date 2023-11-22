import 'package:commission_station/app/controller/article_page_controller.dart';
import 'package:get/get.dart';

class ArticlePageBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ArticlePageController>(() {
      return ArticlePageController();
    });
  }
}
