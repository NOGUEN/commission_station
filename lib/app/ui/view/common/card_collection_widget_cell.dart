import 'package:commission_station/app/data/model/websites/keyword_search.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

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
        String tmp =
            "테스트 텍스트 입니다. 커미션 어쩌구 입니다. 테스트 텍스트 입니다. 커미션 어쩌구 입니다. 커미션이라는 단어가 현재까지 총 3번 나왔습니다.";
        Get.toNamed(Routes.WEBVIEW, arguments: destinationUrl);
        print("\n\n ${countKeywords(tmp, ["커미션"])}");
      },
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Card(
          clipBehavior: Clip.antiAlias,
          child: Column(
            children: <Widget>[
              const AspectRatio(
                aspectRatio: 18 / 11,
                child: Image(
                  image: AssetImage('images/default_thumbnail.png'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
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
                padding: const EdgeInsets.fromLTRB(8, 4, 8, 0),
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
