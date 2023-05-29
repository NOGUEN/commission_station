import 'package:get/get.dart';

import '../data/model/enum/menu_code.dart';

class MainController extends GetxController {
  final _selectedMenuCodeController = MenuCode.MATHING.obs;

  MenuCode get selectedMenuCode => _selectedMenuCodeController.value;

  final lifeCardUpdateController = false.obs;

  onMenuSelected(MenuCode menuCode) async {
    _selectedMenuCodeController(menuCode);
  }
}
