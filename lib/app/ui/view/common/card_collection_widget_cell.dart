import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
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
        Get.toNamed(Routes.WEBVIEW, arguments: destinationUrl);
      },
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Card(
          clipBehavior: Clip.antiAlias,
          child: Column(
            children: <Widget>[
              AspectRatio(
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
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 4, 8, 0),
                child: SizedBox(
                  width: double.infinity,
                  child: Text(subTitle),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
