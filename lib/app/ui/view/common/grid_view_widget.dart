import 'package:commission_station/app/ui/view/common/card_collection_widget_cell.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class GridViewWidget extends StatelessWidget {
  const GridViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 4,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 1 / 2,
      ),
      itemBuilder: (BuildContext context, int index) {
        return CardCollectionWidgetCell(title: 'hello');
      },
    );
  }
}
