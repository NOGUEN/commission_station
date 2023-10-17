import 'package:commission_station/app/view/common/commission_station_text_field.dart';
import 'package:commission_station/app/view/theme/app_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theme/app_string.dart';

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
    required this.controller,
    super.key,
  });

  final String appBarText;
  final controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(20.w, 10.h, 20.w, 0),
              child: CommissionStationTextBold2Xl(
                text: appBarText,
                textColor: Colors.black,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: CommissionStationTextField(
                controller: controller,
                titleText: '',
                hintText: '검색',
                iconPath: AppString.search,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(110.h);
}
