import 'dart:async';
import 'dart:developer';

import 'package:commission_station/app/data/local/mockdata.dart';
import 'package:commission_station/app/view/common/commission_station_banner.dart';
import 'package:commission_station/app/view/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:html/parser.dart' as htmlParser;
import 'package:html/dom.dart' as dom;

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

  //TODO : 시연용 컨트롤러
  /*
    이 부분 나중에 지워 주십쇼

    추가된 패키지(필요없으면 지울 것)
    - http: ^1.1.1
    추가된 data
    - mockdata.dart
   */
  final List<MockDataModel> data = List.from(mockData)..shuffle();
  final RxMap<int, String?> imgUrl = <int, String?>{}.obs;

  @override
  void onInit() {
    super.onInit();

    loadAllImageUrl();
  }

  void loadAllImageUrl() async {
    for(var item in data) {
      if(item.imgUrl != null) {
        imgUrl[item.id] = item.imgUrl;
        continue;
      }

      String url = item.destinationUrl;

      var response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        var document = htmlParser.parse(response.body);
        dom.Element? metaTag = document.querySelector('meta[property="og:image"]');
        if (metaTag != null) {
          imgUrl[item.id] = metaTag.attributes['content'];

          log(metaTag.attributes['content'] ?? 'null');

          update();
        }
      }
    }
  }
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
