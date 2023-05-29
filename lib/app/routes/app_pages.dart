import 'package:get/get.dart';
import '../../test_page.dart';
import '../bindings/test_page_binding.dart';
part './app_routes.dart';

class AppPages {
  static const INITIAL = Routes.INITIAL;

  static final pages = [
    GetPage(
        name: Routes.INITIAL,
        page: () => TestPage(),
        binding: TestPageBinding()),
  ];
}
