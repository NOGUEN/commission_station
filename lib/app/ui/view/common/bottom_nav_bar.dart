import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/bottom_nav_contoller.dart';
import '../../../data/model/enum/menu_code.dart';
import '../../../data/model/menu/menu_item.dart';

class BottomNavBar extends StatelessWidget {
  final Function(MenuCode menuCode) onNewMenuSelected;

  BottomNavBar({Key? key, required this.onNewMenuSelected}) : super(key: key);

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
                  icon: Icon(
                    IconData(int.parse(navItem.iconSvgName),
                        fontFamily: 'MaterialIcons'),
                    color:
                        navItems.indexOf(navItem) == navController.selectedIndex
                            ? selectedItemColor
                            : unselectedItemColor,
                  ),
                  label: navItem.navTitle,
                  tooltip: ""),
            )
            .toList(),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
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
        navTitle: '홈',
        iconSvgName: '0xe318',
        menuCode: MenuCode.MAIN,
      ),
      const BottomNavItem(
        navTitle: '설정',
        iconSvgName: '0xe57f',
        menuCode: MenuCode.SETTING,
      ),
    ];
  }
}
