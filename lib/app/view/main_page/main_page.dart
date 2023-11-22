// ignore_for_file: use_key_in_widget_constructors, must_be_immutable

import 'package:commission_station/app/view/common/commission_station_app_bar.dart';
import 'package:commission_station/app/view/common/commission_station_bottom_nav_bar.dart';
import 'package:commission_station/app/view/main_page/home_page.dart';
import 'package:commission_station/app/view/main_page/social_page.dart';
import 'package:commission_station/app/view/theme/app_string.dart';
import 'package:flutter/material.dart';
import 'package:commission_station/app/core/base/base_view.dart';
import 'package:get/get.dart';
import '../../controller/main/main_controller.dart';
import '../../data/model/enum/menu_code.dart';

class MainPage extends BaseView<MainController> {
  TextEditingController textEditingController = TextEditingController();

  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return CommissionStationAppBar(mainController: controller);
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
        return HomePage();
      case MenuCode.SEARCH:
        return Container();
      case MenuCode.SOCIAL:
        return SocialPage();
      case MenuCode.MORE:
        return Container();
      default:
        return Container();
    }
  }
}
