import 'package:commission_station/app/view/common/commission_station_app_bar.dart';
import 'package:commission_station/app/view/common/commission_station_bottom_nav_bar.dart';
import 'package:commission_station/app/view/theme/app_string.dart';
import 'package:flutter/material.dart';
import 'package:commission_station/app/core/base/base_view.dart';
import 'package:get/get.dart';
import '../../controller/main/main_controller.dart';
import '../../data/model/enum/menu_code.dart';

class MainPage extends BaseView<MainController> {
  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return const CommissionStationSearchAppBar(
      appBarText: AppString.str_commission_station,
    );
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
    return CommissionStationBottomNavigationBar(
        onNewMenuSelected: controller.onMenuSelected);
  }

  Widget getPageOnSelectedMenu(MenuCode menuCode) {
    switch (menuCode) {
      case MenuCode.HOME:
        return Container();
      case MenuCode.SEARCH:
        return Container();
      case MenuCode.SOCIAL:
        return Container();
      case MenuCode.MORE:
        return Container();
      default:
        return Container();
    }
  }
}
