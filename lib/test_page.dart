import 'package:commission_station/app/controller/bottom_nav_contoller.dart';
import 'package:commission_station/app/controller/main_controller.dart';
import 'package:commission_station/app/data/model/enum/menu_code.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'app/ui/view/common/bottom_nav_bar.dart';
import 'app/ui/view/common/grid_card_view_widget.dart';

class TestPage extends GetView<MainController> {
  const TestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Commission Station'),
      ),
      body: GridCardViewWidget(),
      bottomNavigationBar:
          BottomNavBar(onNewMenuSelected: controller.onMenuSelected),
    );
  }
}
