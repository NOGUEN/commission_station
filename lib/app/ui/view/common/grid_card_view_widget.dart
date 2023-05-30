import 'package:commission_station/app/controller/card_view_controller.dart';
import 'package:commission_station/app/ui/view/common/card_collection_widget_cell.dart';
import 'package:flutter/material.dart';

class GridCardViewWidget extends StatelessWidget {
  const GridCardViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    CardViewController cardViewController = CardViewController(list: [
      CommissionInfo(
          title: '제목 제목', subTitle: '서브 제목', url: 'https://noguen.com'),
      CommissionInfo(
          title: 'title', subTitle: 'subTitle', url: 'https://noguen.com'),
      CommissionInfo(
          title: 'title', subTitle: 'subTitle', url: 'https://noguen.com'),
      CommissionInfo(
          title: 'title', subTitle: 'subTitle', url: 'https://noguen.com'),
      CommissionInfo(
          title: 'title', subTitle: 'subTitle', url: 'https://noguen.com'),
      CommissionInfo(
          title: 'title', subTitle: 'subTitle', url: 'https://noguen.com'),
      CommissionInfo(
          title: 'title', subTitle: 'subTitle', url: 'https://noguen.com'),
      CommissionInfo(
          title: 'title', subTitle: 'subTitle', url: 'https://noguen.com'),
      CommissionInfo(
          title: 'title', subTitle: 'subTitle', url: 'https://noguen.com'),
    ]);

    return GridView.builder(
      itemCount: cardViewController.list.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1,
      ),
      itemBuilder: (BuildContext context, int index) {
        return CardCollectionWidgetCell(
          title: cardViewController.list[index].title,
          subTitle: cardViewController.list[index].subTitle,
          destinationUrl: cardViewController.list[index].url,
        );
      },
    );
  }
}
