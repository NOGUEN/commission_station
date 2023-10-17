import 'package:commission_station/app/view/theme/app_fontweight.dart';
import 'package:commission_station/app/view/theme/app_values.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CommissionStationTextField extends StatelessWidget {
  final TextEditingController controller;
  final String titleText;
  final String hintText;
  final TextInputAction? action;
  final TextInputType? inputType;
  final bool? needHide;
  final String? iconPath;
  void Function(String)? keyboardSubmit;
  void Function(String)? onChanged;
  final Function()? iconPressed;

  CommissionStationTextField({
    required this.controller,
    required this.titleText,
    required this.hintText,
    this.action,
    this.inputType,
    this.needHide,
    this.iconPath,
    this.keyboardSubmit,
    this.iconPressed,
    this.onChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          titleText,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 15,
            fontWeight: AppFontWeights.regular,
          ),
        ),
        TextField(
          decoration: InputDecoration(
            enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black,
                width: 2,
              ),
            ),
            prefixIcon: iconPath != null
                ? Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.h),
                    child: SvgPicture.asset(
                      iconPath!,
                      width: 12.w,
                    ),
                  )
                : null,
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black,
                width: 4,
              ),
            ),
            hintText: hintText,
            hintStyle: const TextStyle(
              color: Colors.grey,
              fontSize: 20,
              fontWeight: AppFontWeights.regular,
            ),
            contentPadding: EdgeInsets.fromLTRB(16, 0, 0, 0),
          ),
          style: const TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: AppFontWeights.regular,
          ),
          textInputAction: action,
          keyboardType: inputType,
          obscureText: needHide != null && needHide! ? true : false,
          autofocus: false,
          onSubmitted: keyboardSubmit,
          onChanged: onChanged,
          textAlignVertical: iconPath != null ? TextAlignVertical.center : null,
        ),
      ],
    );
  }
}
