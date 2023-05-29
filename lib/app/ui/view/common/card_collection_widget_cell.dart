import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class CardCollectionWidgetCell extends StatelessWidget {
  final String title;
  final String destinationUrl;
  const CardCollectionWidgetCell({
    required this.title,
    required this.destinationUrl,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(Routes.WEBVIEW, arguments: destinationUrl);
      },
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: <Widget>[
            AspectRatio(
              aspectRatio: 18 / 11,
              child: Container(
                color: Colors.blue,
              ),
            ),
            Expanded(
              child: Column(children: <Widget>[
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: Text(title),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
