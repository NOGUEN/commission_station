import 'package:commission_station/app/controller/odos_bottom_navigationbar_controller.dart';
import 'package:commission_station/app/data/model/enum/menu_code.dart';
import 'package:commission_station/app/data/model/menu/menu_item.dart';
import 'package:commission_station/app/view/theme/app_colors.dart';
import 'package:commission_station/app/view/theme/app_string.dart';
import 'package:commission_station/app/view/theme/app_values.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class CommissionStationBottomNavigationBar extends StatelessWidget {
  final Function(MenuCode menuCode) onNewMenuSelected;
  CommissionStationBottomNavigationBar(
      {Key? key, required this.onNewMenuSelected})
      : super(key: key);

  final navController = BottomNavController();

  final Key bottomNavKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    Color selectedItemColor = Colors.black;
    Color unselectedItemColor = Colors.grey;
    List<BottomNavItem> navItems = _getNavItems();

    return Obx(
      () => BottomNavigationBar(
        key: bottomNavKey,
        items: navItems
            .map(
              (BottomNavItem navItem) => BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  navItem.iconSVGName,
                  height: AppValues.iconDefaultSize,
                  width: AppValues.iconDefaultSize,
                  colorFilter: navItems.indexOf(navItem) ==
                          navController.selectedIndex
                      ? ColorFilter.mode(selectedItemColor, BlendMode.srcIn)
                      : ColorFilter.mode(unselectedItemColor, BlendMode.srcIn),
                ),
                label: navItem.menuTitle,
                tooltip: "",
              ),
            )
            .toList(),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColors.pageBackground,
        selectedItemColor: selectedItemColor,
        unselectedItemColor: unselectedItemColor,
        currentIndex: navController.selectedIndex,
        onTap: (index) {
          navController.updateSelectedIndex(index);
          onNewMenuSelected(navItems[index].menuCode);
        },
      ),
    );
  }

  List<BottomNavItem> _getNavItems() {
    return [
      const BottomNavItem(
        iconSVGName: AppString.home,
        menuTitle: AppString.str_home,
        menuCode: MenuCode.HOME,
      ),
      const BottomNavItem(
        iconSVGName: AppString.search,
        menuTitle: AppString.str_search,
        menuCode: MenuCode.SEARCH,
      ),
      const BottomNavItem(
        iconSVGName: AppString.social,
        menuTitle: AppString.str_social,
        menuCode: MenuCode.SOCIAL,
      ),
      const BottomNavItem(
        iconSVGName: AppString.more,
        menuTitle: AppString.str_more,
        menuCode: MenuCode.MORE,
      ),
    ];
  }
}
