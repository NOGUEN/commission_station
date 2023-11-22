import 'dart:async';

import 'package:commission_station/app/view/common/commission_station_banner.dart';
import 'package:commission_station/app/view/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../data/model/enum/menu_code.dart';
import '/app/core/base/base_controller.dart';

class MainController extends BaseController {
  final _selectedMenuCodeController = MenuCode.HOME.obs;

  MenuCode get selectedMenuCode => _selectedMenuCodeController.value;

  final lifeCardUpdateController = false.obs;

  BannerController bannerController = BannerController();
  late BannerDelegate bannerDelegate;

  late Timer timer;

  onMenuSelected(MenuCode menuCode) async {
    _selectedMenuCodeController(menuCode);
  }

  var currentPage = 0.obs;
  var pageController = PageController();
}

class BannerDelegate extends SliverPersistentHeaderDelegate {
  final MainController controller;

  BannerDelegate({required this.controller});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return SizedBox(
      height: 75.h,
      child: PageView(
        controller: controller.pageController,
        onPageChanged: (int page) {
          controller.currentPage.value = page;
        },
        children: [
          const CSBanner(
            title: '고라니 작가의 커미션!',
            subTitle: '고라니가 그려주는 그림!',
            assetRoute: 'images/banner_1.png',
            fontColor: AppColors.black,
          ),
          const CSBanner(
            title: '비둘기 작가의 커미션!',
            subTitle: '비둘기가 쪼아주는 그림!',
            assetRoute: 'images/banner_2.png',
            fontColor: AppColors.white,
          ),
          Stack(
            children: [
              Container(
                width: 360.w,
                child: Image.asset(
                  'images/banner_1.png',
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16.h, left: 16.w),
                child: Text(
                  '고라니 작가의 커미션!',
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 35.h, left: 16.w),
                child: Text(
                  '고라니가 그려주는 그림!',
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  double get maxExtent => 75.h;

  @override
  double get minExtent => 75.h;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}

class BannerController extends GetxController {
  var currentPage = 0.obs;
  var pageController = PageController();

  @override
  void onInit() {
    Timer.periodic(const Duration(seconds: 4), (Timer timer) {
      if (currentPage.value < 2) {
        currentPage.value++;
        pageController.animateToPage(
          currentPage.value,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      } else {
        currentPage.value = 0;
        pageController.animateToPage(
          currentPage.value,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      }
    });

    super.onInit();
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }
}
