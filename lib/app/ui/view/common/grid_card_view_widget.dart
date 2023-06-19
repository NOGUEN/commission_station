import 'package:commission_station/app/controller/card_view_controller.dart';
import 'package:commission_station/app/ui/view/common/card_collection_widget_cell.dart';
import 'package:flutter/material.dart';

import '../../../data/model/commission_info.dart';

class GridCardViewWidget extends StatelessWidget {
  const GridCardViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    CardViewController cardViewController = CardViewController(list: [
      CommissionInfo(
          title: '🥹 커미션 개장 🥹',
          subTitle: '커미션 해요, 가끔 , 개인작 해요',
          url: 'https://twitter.com/gydud612/status/1663457504536432640'),
      CommissionInfo(
          title: '🎱RT추첨🎱',
          subTitle: 'RT 해주신 분 중 추첨을 통해 아래의 타입을 작업해드립니다!',
          url: 'https://twitter.com/Guiro_ooo/status/1663575353556885504'),
      CommissionInfo(
          title: 'RT🫧 목표금액',
          subTitle: '새로운 타입을 추가하여 돌아왔습니다!',
          url: 'https://twitter.com/Lee__0124/status/1663479393166163970'),
      CommissionInfo(
          title: '6월 1일(목) 오후 9시 정각에 풀채색 슬롯 5자리 받습니다!',
          subTitle: '커미션 전체공지',
          url: 'https://twitter.com/gwangtae04511/status/1663504752385335299'),
      CommissionInfo(
          title: '🎀텐시 드레스룸🎀',
          subTitle: '의상포즈 오마카세 커미션입니다˚* ੈ✩',
          url: 'https://twitter.com/ham_sheep_/status/1663530956815482880'),
      CommissionInfo(
          title: 'RT🫧',
          subTitle: '새로운 타입을 추가하여 돌아왔습니다!',
          url: 'https://twitter.com/Lee__0124/status/1663479393166163970'),
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
