import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CardCollectionWidgetCell extends StatelessWidget {
  final String title;
  const CardCollectionWidgetCell({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("hello");
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
