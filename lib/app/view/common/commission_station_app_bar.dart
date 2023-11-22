import 'package:commission_station/app/controller/main/main_controller.dart';
import 'package:commission_station/app/data/model/enum/menu_code.dart';
import 'package:commission_station/app/view/common/commission_station_text_field.dart';
import 'package:commission_station/app/view/theme/app_colors.dart';
import 'package:commission_station/app/view/theme/app_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../theme/app_string.dart';

class CommissionStationAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  CommissionStationAppBar({
    required this.mainController,
    super.key,
  });

  String appBarText = "";
  final MainController mainController;
  RxDouble appBarHeight = 100.h.obs;
  Widget optionalWidget = SizedBox();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        if (mainController.selectedMenuCode == MenuCode.HOME) {
          appBarHeight.value = 48.h + MediaQuery.of(context).padding.top;
          appBarText = "Commission Station";
          optionalWidget = const SizedBox();
        } else if (mainController.selectedMenuCode == MenuCode.SOCIAL) {
          appBarHeight.value = 48.h + MediaQuery.of(context).padding.top;
          appBarText = "소셜";
          optionalWidget = const SizedBox();
        } else if (mainController.selectedMenuCode == MenuCode.SEARCH) {
          appBarHeight = (100.h + MediaQuery.of(context).padding.top).obs;
          appBarText = "검색";
          optionalWidget = Padding(
            padding: EdgeInsets.all(10.w),
            child: CommissionStationTextField(
              controller: TextEditingController(),
              titleText: '',
              hintText: '키워드를 입력해주세요',
            ),
          );
        } else if (mainController.selectedMenuCode == MenuCode.MORE) {
          appBarHeight.value = 48.h + MediaQuery.of(context).padding.top;
          appBarText = "더보기";
          optionalWidget = SizedBox();
        }

        if (appBarHeight.value == 0) {}
        return Container(
          height: appBarHeight.value,
          decoration: const BoxDecoration(color: AppColors.white),
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.fromLTRB(10.w, 10.h, 20.w, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CommissionStationTextBold2Xl(
                    text: appBarText,
                    textColor: Colors.black,
                  ),
                  optionalWidget,
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(appBarHeight.value);
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
