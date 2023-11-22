import 'dart:async';

import 'package:commission_station/app/controller/main/home_page_controller.dart';
import 'package:commission_station/app/controller/main/main_controller.dart';
import 'package:commission_station/app/core/base/base_view.dart';
import 'package:commission_station/app/view/common/commission_station_banner.dart';
import 'package:commission_station/app/view/common/commission_station_webview_card.dart';
import 'package:commission_station/app/view/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HomePage extends BaseView<MainController> {
  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return null;
  }

  @override
  Widget body(BuildContext context) {
    controller.bannerController = BannerController();
    controller.timer =
        Timer.periodic(const Duration(seconds: 4), (Timer timer) {
      if (controller.currentPage.value < 2) {
        controller.currentPage.value++;
        controller.pageController.animateToPage(
          controller.currentPage.value,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      } else {
        controller.currentPage.value = 0;
        controller.pageController.animateToPage(
          controller.currentPage.value,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      }
    });
    return CustomScrollView(
      slivers: [
        SliverPersistentHeader(
          pinned: true,
          delegate: BannerDelegate(controller: controller),
        ),
        SliverList(
          delegate: SliverChildListDelegate([
            Padding(
              padding: EdgeInsets.all(16.r),
              child: Text(
                '최신 커미션 글',
                style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
              ),
            ),
          ]),
        ),
        SliverGrid(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200.w,
            mainAxisSpacing: 16.h,
            childAspectRatio: (150 / 200),
          ),
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return CardCollectionWidgetCell(
                title: 'Commission On X',
                subTitle: 'subTitle',
                destinationUrl:
                    'https://twitter.com/_moonblanc/status/1727245573156384976',
              );
            },
            childCount: 10,
          ),
        ),
      ],
    );
  }
}

Widget gridView() {
  return GridView.count(
    physics: NeverScrollableScrollPhysics(),
    crossAxisCount: 2,
    childAspectRatio: (150 / 200),
    mainAxisSpacing: 10.w,
    crossAxisSpacing: 10.h,
    children: List.generate(10, (index) {
      return const CardCollectionWidgetCell(
        title: 'hello',
        subTitle: 'hello',
        destinationUrl: '',
      );
    }),
  );
}
