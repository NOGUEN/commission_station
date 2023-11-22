import 'package:commission_station/app/controller/main/main_controller.dart';
import 'package:commission_station/app/controller/main/social_page_controller.dart';
import 'package:commission_station/app/core/base/base_view.dart';
import 'package:commission_station/app/view/common/article_list_cell.dart';
import 'package:commission_station/app/view/theme/app_colors.dart';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/preferred_size.dart';

class SocialPage extends BaseView<MainController> {
  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return null;
  }

  @override
  Widget body(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return const CSArticleListCell(
          title: 'hello',
          author: 'gorani',
          date: '2023.10.31',
        );
      },
    );
  }

  @override
  Widget? floatingActionButton() {
    return FloatingActionButton.extended(
      onPressed: () {},
      label: const Text(
        '새 글 작성',
        style: TextStyle(
          color: AppColors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
      icon: const Icon(
        Icons.edit,
        color: AppColors.black,
      ),
      backgroundColor: AppColors.white,
    );
  }
}
