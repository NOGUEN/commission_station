import 'package:commission_station/app/ui/view/common/grid_card_view_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/main_commission_page_controller.dart';

class MainCommissionPage extends GetView<MainCommissionPageController> {
  const MainCommissionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8),
      child: GridCardViewWidget(),
    );
  }
}
