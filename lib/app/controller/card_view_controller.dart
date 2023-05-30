import 'package:get/get.dart';

class CommissionInfo {
  final String title;
  final String subTitle;
  final String url;

  CommissionInfo({
    required this.title,
    required this.subTitle,
    required this.url,
  });
}

class CardViewController extends GetxController {
  List<CommissionInfo> list;

  CardViewController({required this.list});
}
