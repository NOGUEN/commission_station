import 'package:commission_station/app/ui/view/common/card_collection_widget_cell.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class GridCardViewWidget extends StatelessWidget {
  const GridCardViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 20,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1,
      ),
      itemBuilder: (BuildContext context, int index) {
        return CardCollectionWidgetCell(
          title: 'hello',
          destinationUrl: 'https://velog.io/@lee7198/Flutter-WebVIew-도입기-1',
        );
      },
    );
  }
}
