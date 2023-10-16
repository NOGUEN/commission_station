import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:commission_station/app/core/base/base_view.dart';
import '../../controller/main/main_controller.dart';
import '../../data/model/enum/menu_code.dart';

class MainPage extends BaseView<MainController> {
  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    //return const CommissionStationAppBar();
    return AppBar();
  }

  @override
  Widget body(BuildContext context) {
    return Container(
      key: UniqueKey(),
      child: Obx(() => getPageOnSelectedMenu(controller.selectedMenuCode)),
    );
  }

  @override
  Widget? bottomNavigationBar() {
    //return CommissionStationBottomNavigationBar(
    //    onNewMenuSelected: controller.onMenuSelected);
    return null;
  }

  Widget getPageOnSelectedMenu(MenuCode menuCode) {
    switch (menuCode) {
      case MenuCode.HOME:
        return Container();
      case MenuCode.GOAL:
        return Container();
      case MenuCode.MYPAGE:
        return Container();
      default:
        return Container();
    }
  }
}
