import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CSBanner extends StatelessWidget {
  final double height;
  const CSBanner({
    required this.height,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    int _currentPage = 0;
    final PageController _pageController = PageController();

    return Container(
      height: height,
      child: Stack(
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: (int page) {
              _currentPage = page;
            },
            children: [
              buildBanner('Banner 1', 0, Colors.red[100]!),
              buildBanner('Banner 2', 1, Colors.red[200]!),
            ],
          )
        ],
      ),
    );
  }
}

Widget buildBanner(String text, int index, Color bannerColor) {
  return Container(
    decoration: BoxDecoration(
      color: bannerColor,
    ),
    child: Center(child: Text(text)),
  );
}
