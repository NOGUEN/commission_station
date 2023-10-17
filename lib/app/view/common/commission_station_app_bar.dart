import 'package:commission_station/app/view/theme/app_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommissionStationAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const CommissionStationAppBar({
    required this.appBarText,
    super.key,
  });

  final String appBarText;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: CommissionStationTextBold2Xl(
        text: appBarText,
        textColor: Colors.black,
      ),
      centerTitle: false,
      backgroundColor: Colors.white,
      elevation: 0.0,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(48.h);
}

class CommissionStationSearchAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const CommissionStationSearchAppBar({
    required this.appBarText,
    super.key,
  });

  final String appBarText;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CommissionStationTextBold2Xl(
              text: appBarText,
              textColor: Colors.black,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(136.h);
}
