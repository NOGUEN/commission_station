import 'package:commission_station/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
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
