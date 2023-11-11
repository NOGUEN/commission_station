import 'package:commission_station/app/controller/main/home_page_controller.dart';
import 'package:commission_station/app/core/base/base_body.dart';
import 'package:commission_station/app/core/base/base_view.dart';
import 'package:commission_station/app/view/common/commission_station_banner.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/preferred_size.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends BaseView<HomePageController> {
  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return null;
  }

  @override
  Widget body(BuildContext context) {
    return BaseBodyWithoutPadding(widgetList: [
      CSBanner(
        height: 75.h,
      )
    ]);
  }
}
