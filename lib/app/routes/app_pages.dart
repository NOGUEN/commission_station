import 'package:commission_station/app/bindings/web_view_binding.dart';
import 'package:get/get.dart';
import '../../test_page.dart';
import '../bindings/test_page_binding.dart';
import '../ui/view/web_view_page.dart';
part './app_routes.dart';

class AppPages {
  static const INITIAL = Routes.INITIAL;

  static final pages = [
    GetPage(
      name: Routes.INITIAL,
      page: () => const TestPage(),
      binding: TestPageBinding(),
    ),
    GetPage(
      name: Routes.WEBVIEW,
      page: () => const WebViewPage(),
      binding: WebViewBinding(),
    ),
  ];
}
