import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CSBanner extends StatelessWidget {
  final String title;
  final String subTitle;
  final String assetRoute;
  final Color fontColor;

  const CSBanner({
    required this.title,
    required this.subTitle,
    required this.assetRoute,
    required this.fontColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: 360.w,
          child: Image.asset(
            assetRoute,
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 16.h, left: 16.w),
          child: Text(
            title,
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
              color: fontColor,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 35.h, left: 16.w),
          child: Text(
            subTitle,
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.normal,
              color: fontColor,
            ),
          ),
        ),
      ],
    );
  }
}
