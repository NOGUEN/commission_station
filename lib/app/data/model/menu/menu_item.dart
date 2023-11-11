import '../enum/menu_code.dart';

class BottomNavItem {
  final String iconSVGName;
  final String menuTitle;
  final MenuCode menuCode;

  const BottomNavItem({
    required this.iconSVGName,
    required this.menuTitle,
    required this.menuCode,
  });
}
