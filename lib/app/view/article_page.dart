import 'package:commission_station/app/controller/article_page_controller.dart';
import 'package:commission_station/app/core/base/base_view.dart';
import 'package:commission_station/app/view/theme/app_colors.dart';
import 'package:commission_station/app/view/theme/app_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/preferred_size.dart';
import 'package:get/get.dart';

class AritclePage extends BaseView<ArticlePageController> {
  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios),
        color: AppColors.black,
        onPressed: () {
          Get.back();
        },
      ),
      title: const CommissionStationTextBold2Xl(
        text: '게시글',
        textColor: AppColors.black,
      ),
      backgroundColor: AppColors.white,
      elevation: 0.0,
    );
  }

  @override
  Widget body(BuildContext context) {
    return Container();
  }
}
