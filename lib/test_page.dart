import 'package:commission_station/app/controller/main_controller.dart';
import 'package:commission_station/app/data/model/enum/menu_code.dart';
import 'package:commission_station/app/ui/view/main_commission_page.dart';
import 'package:commission_station/app/ui/view/setting_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/ui/view/common/bottom_nav_bar.dart';

class TestPage extends GetView<MainController> {
  const TestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.fromLTRB(4, 16, 0, 0),
          child: Text(
            'Commission Station',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        centerTitle: false,
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Obx(() => getPageOnSelectedMenu(controller.selectedMenuCode)),
      bottomNavigationBar:
          BottomNavBar(onNewMenuSelected: controller.onMenuSelected),
    );
  }
}

const MainCommissionPage mainPage = MainCommissionPage();
SettingPage? settingPage;

Widget getPageOnSelectedMenu(MenuCode menuCode) {
  switch (menuCode) {
    case MenuCode.MAIN:
      // return homeView;
      return const Padding(
        padding: EdgeInsets.all(8.0),
        child: mainPage,
      );
    case MenuCode.SETTING:
      settingPage ??= const SettingPage();
      return settingPage!;
    default:
      return const Padding(
        padding: EdgeInsets.all(8.0),
        child: mainPage,
      );
  }
}
