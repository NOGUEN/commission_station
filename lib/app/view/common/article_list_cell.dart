import 'package:commission_station/app/routes/app_pages.dart';
import 'package:commission_station/app/view/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CSArticleListCell extends StatelessWidget {
  final String title;
  final String author;
  final String date;

  const CSArticleListCell({
    required this.title,
    required this.author,
    required this.date,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 8.h),
      child: GestureDetector(
        onTap: (() {
          Get.toNamed(AppPages.ARTICLE);
        }),
        child: Container(
          height: 60.h,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: AppColors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: 10.w,
                  top: 13.h,
                ),
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Spacer(),
              Padding(
                padding: EdgeInsets.only(
                  left: 10.w,
                  bottom: 10.h,
                  right: 10.w,
                ),
                child: Row(
                  children: [
                    Text(
                      author,
                      style: TextStyle(
                        fontSize: 10.sp,
                        color: Colors.red,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      date,
                      style: TextStyle(fontSize: 10.sp),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
