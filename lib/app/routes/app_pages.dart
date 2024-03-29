// ignore_for_file: constant_identifier_names

import 'package:commission_station/app/bindings/article_page_binding.dart';
import 'package:commission_station/app/bindings/web_page_binding.dart';
import 'package:commission_station/app/view/article_page.dart';
import 'package:commission_station/app/view/web_view_page.dart';
import 'package:get/get.dart';
import 'package:commission_station/app/view/main_page/main_page.dart';
import '../bindings/main_binding.dart';

part './app_routes.dart';

// 앱 내 페이지를 정의하는 공간, 페이지 만든 후 여기에 정의해주세요
class AppPages {
  AppPages._();

  static const INITIAL = Routes.MAIN;
  static const WEBVIEW = Routes.WEBVIEW;
  static const ARTICLE = Routes.ARTICLE;
  static const TEST_PAGE = Routes.TEST_PAGE;

  static final pages = [
    GetPage(
      name: _Paths.MAIN,
      page: () => MainPage(),
      binding: MainBinding(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: _Paths.ARTICLE,
      page: () => AritclePage(),
      binding: ArticlePageBinding(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.WEBVIEW,
      page: () => WebViewPage(),
      binding: WebViewBinding(),
    ),
  ];
}
