import 'package:commission_station/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CardCollectionWidgetCell extends StatelessWidget {
  final String title;
  final String subTitle;
  final String destinationUrl;
  const CardCollectionWidgetCell({
    required this.title,
    required this.subTitle,
    required this.destinationUrl,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(Routes.WEBVIEW, arguments: destinationUrl);
      },
      child: Padding(
        padding: EdgeInsets.only(right: 8.w, left: 8.w),
        child: Container(
          width: 150.w,
          height: 200.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            color: Colors.blue,
          ),
          child: Column(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8.r),
                    topRight: Radius.circular(8.r),
                  ),
                  color: Colors.white,
                ),
                child: const AspectRatio(
                  aspectRatio: 1 / 1,
                  child: Image(
                    image: AssetImage('images/logo_x.png'),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(8.r, 8.r, 8.r, 0),
                child: SizedBox(
                  width: double.infinity,
                  child: Text(
                    title,
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(8.r, 4.r, 8.r, 0),
                child: SizedBox(
                  width: double.infinity,
                  child: Text(
                    subTitle,
                    style: const TextStyle(
                      fontSize: 10,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
