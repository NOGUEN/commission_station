import 'dart:async';

import 'package:commission_station/app/controller/main/main_controller.dart';
import 'package:commission_station/app/core/base/base_view.dart';
import 'package:commission_station/app/view/common/commission_station_text_field.dart';
import 'package:commission_station/app/view/common/commission_station_webview_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchPage extends BaseView<MainController> {
  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return null;
  }

  @override
  Widget body(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverGrid(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200.w,
            mainAxisSpacing: 16.h,
            childAspectRatio: (150 / 200),
          ),
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Padding(
                padding: EdgeInsets.only(top: 10.h),
                child: CardCollectionWidgetCell(
                  title: controller.data[index].title,
                  subTitle: controller.data[index].subTitle,
                  imgUrl: controller.imgUrl[controller.data[index].id],
                  destinationUrl: controller.data[index].destinationUrl,
                ),
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
    physics: const NeverScrollableScrollPhysics(),
    crossAxisCount: 2,
    childAspectRatio: (150 / 200),
    mainAxisSpacing: 10.w,
    crossAxisSpacing: 10.h,
    children: List.generate(10, (index) {
      return const CardCollectionWidgetCell(
        title: 'hello',
        subTitle: 'hello',
        destinationUrl: '',
        imgUrl: '',
      );
    }),
  );
}
