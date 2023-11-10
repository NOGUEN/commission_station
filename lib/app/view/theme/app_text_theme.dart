// ignore_for_file: non_constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:commission_station/app/view/theme/app_fontweight.dart';

//app_theme이외의 텍스트 스타일이 필요할 때 여기 정의해주세요

class CommissionStationTextBoldMd extends StatelessWidget {
  const CommissionStationTextBoldMd({
    required this.text,
    required this.textColor,
    super.key,
  });
  final String text;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: textColor,
        fontSize: 14,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class CommissionStationTextBoldLg extends StatelessWidget {
  const CommissionStationTextBoldLg({
    required this.text,
    required this.textColor,
    super.key,
  });
  final String text;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: textColor,
        fontSize: 16,
        fontWeight: AppFontWeights.bold,
      ),
    );
  }
}

class CommissionStationTextBoldXl extends StatelessWidget {
  const CommissionStationTextBoldXl({
    required this.text,
    required this.textColor,
    super.key,
  });
  final String text;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: textColor,
        fontSize: 20,
        fontWeight: AppFontWeights.bold,
      ),
    );
  }
}

class CommissionStationTextBold2Xl extends StatelessWidget {
  const CommissionStationTextBold2Xl({
    required this.text,
    required this.textColor,
    super.key,
  });
  final String text;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: textColor,
        fontSize: 24,
        fontWeight: AppFontWeights.bold,
      ),
    );
  }
}

class CommissionStationTextMediumMd extends StatelessWidget {
  const CommissionStationTextMediumMd({
    required this.text,
    required this.textColor,
    super.key,
  });
  final String text;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: textColor,
        fontSize: 16,
        fontWeight: AppFontWeights.medium,
      ),
    );
  }
}

class CommissionStationTextRegularXs extends StatelessWidget {
  const CommissionStationTextRegularXs({
    required this.text,
    required this.textColor,
    super.key,
  });
  final String text;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: textColor,
        fontSize: 12,
        fontWeight: AppFontWeights.regular,
      ),
    );
  }
}

class CommissionStationTextRegularMd extends StatelessWidget {
  const CommissionStationTextRegularMd({
    required this.text,
    required this.textColor,
    super.key,
  });
  final String text;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: textColor,
        fontSize: 14,
        fontWeight: AppFontWeights.regular,
      ),
    );
  }
}

class CommissionStationTextRegularLg extends StatelessWidget {
  const CommissionStationTextRegularLg({
    required this.text,
    required this.textColor,
    super.key,
  });
  final String text;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: textColor,
        fontSize: 16,
        fontWeight: AppFontWeights.regular,
      ),
    );
  }
}

class CommissionStationTextRegularXl extends StatelessWidget {
  const CommissionStationTextRegularXl({
    required this.text,
    required this.textColor,
    super.key,
  });
  final String text;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: textColor,
        fontSize: 20,
        fontWeight: AppFontWeights.regular,
      ),
    );
  }
}
