import 'dart:async';

import 'package:commission_station/app/controller/main/home_page_controller.dart';
import 'package:commission_station/app/core/base/base_view.dart';
import 'package:commission_station/app/view/common/commission_station_webview_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HomePage extends BaseView<HomePageController> {
  final BannerController bannerController = Get.put(BannerController());
  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return null;
  }

  @override
  Widget body(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverPersistentHeader(
          pinned: true,
          delegate: _BannerDelegate(),
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
                title: 'title',
                subTitle: 'subTitle',
                destinationUrl: 'destinationUrl',
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

class _BannerDelegate extends SliverPersistentHeaderDelegate {
  final BannerController bannerController = Get.find();

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return SizedBox(
      height: 75.h,
      child: PageView(
        controller: bannerController.pageController,
        onPageChanged: (int page) {
          bannerController.currentPage.value = page;
        },
        children: [
          Container(
            color: Colors.blue,
            child: Center(
              child: Text('배너 1'),
            ),
          ),
          Container(
            color: Colors.green,
            child: Center(
              child: Text('배너 2'),
            ),
          ),
          Container(
            color: Colors.orange,
            child: Center(
              child: Text('배너 3'),
            ),
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
